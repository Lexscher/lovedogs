include karax / prelude

proc createDom(): VNode =
    result = buildHtml(tdiv):
        text "We Love Dogs!"

setRenderer createDom