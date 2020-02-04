include karax / prelude
from sugar import `=>`

var view: string = "home"

proc toggleView(viewName: string): proc() =
    result = proc() = 
        view = viewName
    

proc createDom(): VNode =
    result = buildHtml(tdiv):
        var message: string
        case view:
            of "home":
                message = "Welcome"
            of "dogs":
                message = "We Love Dogs!"
            of "profile":
                message = "Your profile"
            else:
                message = "404"
        h1(class="heading"):
            text message
        button(class="btn btn__page-toggler", onclick = toggleView("home")):
            text "View Home Page"
        button(class="btn btn__page-toggler", onclick = toggleView("dogs")):
            text "View Dogs"
        button(class="btn btn__page-toggler", onclick = toggleView("profile")):
            text "View Your Profile"



setRenderer createDom


