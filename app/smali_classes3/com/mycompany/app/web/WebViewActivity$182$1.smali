.class Lcom/mycompany/app/web/WebViewActivity$182$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$182;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$182;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$182$1;->c:Lcom/mycompany/app/web/WebViewActivity$182;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$182$1;->c:Lcom/mycompany/app/web/WebViewActivity$182;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$182;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->R3:Lcom/mycompany/app/view/MyIconView;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->setDownNoti(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$182;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->R3:Lcom/mycompany/app/view/MyIconView;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyIconView;->x(ZZ)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$182;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->n1(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
