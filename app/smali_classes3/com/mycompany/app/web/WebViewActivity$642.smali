.class Lcom/mycompany/app/web/WebViewActivity$642;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$642;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$642;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    const-string v1, "(function(){var ele=window.sblong;window.sblong=null;window.sbfirst=null;var sel=window.getSelection();if(sel&&sel.toString())return;if(!ele||(ele.tagName==\'HTML\')||(ele.tagName==\'BODY\'))return;var fsel=ele;if(!ele.innerHTML){ele=ele.parentNode;}if(!ele||(ele.tagName==\'HTML\')||(ele.tagName==\'BODY\'))return;window.sbfirst=fsel;android.onLongPars2(ele.innerHTML);})();"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
