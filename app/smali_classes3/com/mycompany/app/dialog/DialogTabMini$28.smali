.class Lcom/mycompany/app/dialog/DialogTabMini$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogTabMain$ReleaseBackListener;


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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$28;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogTabMini;->H1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$28;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v2, Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 11
    .line 12
    new-instance v3, Lcom/mycompany/app/dialog/DialogTabMini$29;

    .line 13
    .line 14
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogTabMini$29;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v1, v3}, Lcom/mycompany/app/dialog/DialogDeleteItem;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogDeleteItem$DelItemListener;)V

    .line 18
    .line 19
    .line 20
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini;->J0:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 21
    .line 22
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMini$30;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogTabMini$30;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
