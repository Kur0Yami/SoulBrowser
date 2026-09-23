.class Lcom/mycompany/app/dialog/DialogWebView$LongClick;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$LongClick;->c:Lcom/mycompany/app/dialog/DialogWebView;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$LongClick;->c:Lcom/mycompany/app/dialog/DialogWebView;

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->L1:Lcom/mycompany/app/wview/WebAreaView;

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/mycompany/app/web/WebNestView;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/mycompany/app/web/WebNestView;

    move-object v1, p1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogWebView;->b0:Lcom/mycompany/app/main/MainActivity;

    instance-of v0, p1, Lcom/mycompany/app/web/WebViewActivity;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/mycompany/app/web/WebViewActivity;

    invoke-virtual {p1, v1}, Lcom/mycompany/app/web/WebViewActivity;->handleWebNestLongClick(Lcom/mycompany/app/web/WebNestView;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
