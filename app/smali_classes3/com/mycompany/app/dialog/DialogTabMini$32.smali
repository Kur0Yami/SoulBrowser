.class Lcom/mycompany/app/dialog/DialogTabMini$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDeleteItem$DelItemListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTabMini;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$32;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$32;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->K0:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMini$32$1;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTabMini$32$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$32;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final b(Lcom/mycompany/app/view/MyRoundImage;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$32;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->m1:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini;->n1:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMini;->m1:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 9
    .line 10
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMini;->n1:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMini;->K0:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->q3(Landroid/content/Context;Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v1, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 27
    .line 28
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 29
    .line 30
    invoke-static {v1, v2}, Lcom/mycompany/app/web/WebTabBarAdapter;->y(IZ)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1, v2, v1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
