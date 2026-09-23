.class Lcom/mycompany/app/web/WebViewActivity$247$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$247;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$247;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$247$1;->c:Lcom/mycompany/app/web/WebViewActivity$247;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$247$1;->c:Lcom/mycompany/app/web/WebViewActivity$247;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$247;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->x2:Lcom/mycompany/app/view/MyEditAuto;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->x2:Lcom/mycompany/app/view/MyEditAuto;

    .line 14
    .line 15
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$247$1$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$247$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$247$1;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
