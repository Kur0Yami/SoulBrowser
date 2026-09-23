.class Lcom/mycompany/app/dialog/DialogWebView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$7;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$7;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebView;->G0:Lcom/mycompany/app/view/MyButtonImage;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebView;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebView;->G0:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    const/16 v1, 0x8

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebView;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/mycompany/app/dialog/DialogWebView;->G(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method
