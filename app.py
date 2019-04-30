from flask import Flask, render_template, flash, redirect, url_for, session, logging, request
from flask_mysqldb import MySQL
from wtforms import Form, StringField, TextAreaField, PasswordField, FileField, validators
from passlib.hash import sha256_crypt
from functools import wraps
from flask_wtf import FlaskForm
from werkzeug.utils import secure_filename
from flask_wtf.file import FileField, FileAllowed, FileRequired
import os
from flask_uploads import UploadSet, configure_uploads, IMAGES, patch_request_class
from flask_wtf import FlaskForm
from wtforms import SubmitField


# user register form
class UserRegister(Form):
    name = StringField("Ad və Soyad:", validators=[
        validators.length(min=4, max=25, message="Minimum 4 maksimum 25 simvol daxil edin !!!")])
    username = StringField("İstifadəçi ad:", validators=[
        validators.Length(min=4, max=25, message="Minimum 4 maksimum 25 simvol daxil edin !!!")])
    email = StringField("Email ünvanı:",
                        validators=[validators.Email(message="Zəhmət olmasa düzgün email ünvanı daxil edin !!!")])

    password = PasswordField("Şifrə:", validators=[validators.EqualTo("confirm", message="Şifrə üst-üstə düşmür"),
                                                   validators.DataRequired("Şifrə daxil edin !!!")])
    confirm = PasswordField("Təkrar şifrə: ", validators=[validators.DataRequired("Təkrar daxil edin !!!")])


# user login form
class UserLogin(Form):
    username = StringField("İstifadəçi adı:", validators=[validators.DataRequired("İstifadəçi adınızı daxil edin !!!")])
    password = PasswordField("Şifrə:", validators=[validators.DataRequired("Şifrənizi daxil edin !!!")])


# article form
class Article(Form):
    title = StringField("Məqalə mövzusu:", validators=[validators.DataRequired("Məqalə mövzusunu daxil edin !!!"),
                                                       validators.Length(min=5, max=100,
                                                                         message="Minimum 5 maksimum 100 simvol daxil edin !!!")])
    content = TextAreaField("Məqalə mətni:",
                            validators=[validators.Length(min=10, message="Minimum 10 simvol daxil edin !!!"),
                                        validators.DataRequired("Məqalə mətnini daxil edin !!!")])

    image = FileField('Şəkil seçin:', validators=[validators.DataRequired("Şəkil seçin !!!")])


# database connection properties
app = Flask(__name__)
app.config["MYSQL_HOST"] = "localhost"
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = ""
app.config["MYSQL_DB"] = "aviablog"
app.config["MYSQL_CURSORCLASS"] = "DictCursor"

mysql = MySQL(app)
# secret key for application and session
app.secret_key = 'aviablog'

# image upload and directory configurations
APP_ROOT = os.path.dirname(os.path.abspath(__file__))
about = "Developed by Garashov Bakhtiyar"

FOLDER = os.path.join('images')


# authentication decorator
def login_required(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if "logged_in" in session:
            return f(*args, **kwargs)
        else:
            render_template("index.html")
            flash("Əvvəlcə istifadəçi girişi etməlisiniz !!!", "danger")
            return redirect(url_for("login_renderer"))

    return decorated_function


# main page function
@app.route('/')
def index_renderer():
    cursor = mysql.connection.cursor()
    sorgu = "select * from articles order by Id desc limit 4"
    result = cursor.execute(sorgu)
    articles = cursor.fetchall()

    if result > 0:
        return render_template("index.html", articles=articles)
    else:
        flash("Bazada məqalə yoxdur !!!", "danger")
    return render_template("index.html")


# user registration function
@app.route("/register", methods=["GET", "POST"])
def user_register():
    form = UserRegister(request.form)
    if request.method == "POST" and form.validate():
        name = form.name.data
        username = form.username.data
        email = form.email.data
        password = sha256_crypt.encrypt(form.password.data)
        cursor = mysql.connection.cursor()
        sorgu = 'Insert into users(Name,Email,Username,Password) VALUES (%s,%s,%s,%s)'
        cursor.execute(sorgu, (name, email, username, password))
        mysql.connection.commit()
        cursor.close()
        flash("Əməliyyat uğurla icra olundu", "success")
        return redirect(url_for("index_renderer"))
        # return redirect(url_for("login_renderer"))
    else:
        return render_template("register.html", form=form)


# login page function
@app.route('/login', methods=["GET", "POST"])
def login_renderer():
    form = UserLogin(request.form)
    if request.method == 'POST':
        username = form.username.data
        password_entered = form.password.data
        cursor = mysql.connection.cursor()
        sorgu = "select * from users where username=%s "
        result = cursor.execute(sorgu, (username,))
        if result > 0:
            data = cursor.fetchone()
            real_password = data["Password"]
            if sha256_crypt.verify(password_entered, real_password):
                flash("Uğurlu əməliyyat", "success")
                session["logged_in"] = True
                session["username"] = username
                return redirect(url_for("index_renderer"))
            else:
                flash("Şifrə yalnışdır !!!", "danger")
                return redirect(url_for("login_renderer"))

        else:
            flash("İstifadəçi mövcud deyil !!!", "danger")
            return redirect(url_for("login_renderer"))

    else:
        pass

    return render_template("login.html", form=form)


# logout and session dispose
@app.route('/logout')
def logout_renderer():
    session.clear()
    return redirect(url_for("login_renderer"))


# about page function
@app.route('/about')
def about_renderer():
    return render_template("about.html", text=about)


# dashboard page function
@app.route('/dashboard')
@login_required
def dashboard_renderer():
    cursor = mysql.connection.cursor()
    sorgu = "select * from articles where Author=%s"
    result = cursor.execute(sorgu, (session["username"],))
    if result > 0:
        artikls = cursor.fetchall()
        return render_template("includes/dashboard.html", article=artikls)
    else:
        return render_template("includes/dashboard.html")

    return render_template("includes/dashboard.html")


# article detail page function
@app.route("/articles/<string:Id>")
@login_required
def details(Id):
    cursor = mysql.connection.cursor()
    sorgu = "select * from articles where Id=%s"
    result = cursor.execute(sorgu, (Id,))
    if result > 0:
        article = cursor.fetchone()
        return render_template("articles.html", article=article)

    else:
        return render_template("articles.html")


# addarticle page function
@app.route("/addarticle", methods=["GET", "POST"])
@login_required
def addarticle_renderer():
    global destination
    form = Article(request.form)
    target = os.path.join("static", "images")
    if not os.path.isdir(target):
        os.mkdir(target)
    for file in request.files.getlist('image'):
        filename = file.filename
        destination = "\\".join([target, filename])
        file.save(destination)
        # end of image upload section
    if request.method == "POST":
        title = form.title.data
        content = form.content.data
        path = destination
        cursor = mysql.connection.cursor()
        sorgu = 'insert into articles(Title,Author,Content,Image) values (%s,%s,%s,%s)'
        cursor.execute(sorgu, (title, session["username"], content, path))
        mysql.connection.commit()
        cursor.close()
        flash("Məqalə uğurla daxil edildi", "success")
        return redirect(url_for("dashboard_renderer"))
    return render_template("addarticle.html", form=form)


# article delete function
@app.route("/delete/<string:Id>")
@login_required
def delete_page(Id):
    cursor = mysql.connection.cursor()
    sorgu = "select * from articles where Author=%s and Id=%s"
    result = cursor.execute(sorgu, (session["username"], Id))
    if result > 0:
        sorgu2 = "delete from articles where Id=%s"
        cursor.execute(sorgu2, (Id,))
        mysql.connection.commit()
        return redirect(url_for("dashboard_renderer"))
    else:
        flash("Məqalə mövcud deyil və ya sizə aid deyil !!!", "danger")
        return redirect(url_for("index_renderer"))


# article update function
@app.route("/update/<string:Id>", methods=["GET", "POST"])
@login_required
def update(Id):
    if request.method == "GET":
        cursor = mysql.connection.cursor()
        sorgu = "select * from articles where Id=%s and Author=%s"
        result = cursor.execute(sorgu, (Id, session["username"]))
        if result == 0:
            flash("Məqalə mövcud deyil və ya sizə aid deyil !!!", "danger")
            return redirect(url_for("index_renderer"))
        else:
            article = cursor.fetchone()
            form = Article()
            form.title.data = article["Title"]
            form.content.data = article["Content"]
            return render_template("update.html", form=form)

    elif request.method == "POST":
        form = Article(request.form)
        new_title = form.title.data
        new_content = form.content.data
        sorgu2 = "update articles set Title=%s,Content=%s where Id=%s"
        cursor = mysql.connection.cursor()
        cursor.execute(sorgu2, (new_title, new_content, Id))
        mysql.connection.commit()
        flash("Məqalə uğurla redaktə olundu", "success")
        return redirect(url_for("dashboard_renderer"))


# article read more page function
@app.route("/details/<string:Id>")
def read_more(Id):
    cursor = mysql.connection.cursor()
    sorgu = "select * from articles where Id=%s"
    result = cursor.execute(sorgu, (Id,))
    if result > 0:
        article = cursor.fetchone()
        return render_template("details.html", article=article)

    else:
        flash("Məqalə mövcud deyil", "danger")
        return render_template("index.html")


if __name__ == '__main__':
    app.run(use_reloader=True, debug=True)
