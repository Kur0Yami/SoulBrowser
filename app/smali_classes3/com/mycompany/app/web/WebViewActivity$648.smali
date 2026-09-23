.class Lcom/mycompany/app/web/WebViewActivity$648;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$648;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$648;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$648$1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$648$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$648;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "document.documentElement.lang"

    .line 15
    .line 16
    invoke-virtual {p1, v2, v1}, Lcom/mycompany/app/web/WebNestView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 17
    .line 18
    .line 19
    return v0
.end method
