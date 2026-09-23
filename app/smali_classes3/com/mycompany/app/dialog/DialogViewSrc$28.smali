.class Lcom/mycompany/app/dialog/DialogViewSrc$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewSrc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$28;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget p1, Lcom/mycompany/app/dialog/DialogViewSrc;->s0:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$28;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewSrc;->i0:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekBright;->dismiss()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogViewSrc;->i0:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogViewSrc;->U:Lcom/mycompany/app/view/MyFadeFrame;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyFadeFrame;->h(Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method
