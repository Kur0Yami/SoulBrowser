.class Lcom/mycompany/app/dialog/DialogTabMini$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMini;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$30;->c:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget p1, Lcom/mycompany/app/dialog/DialogTabMini;->H1:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$30;->c:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogTabMini;->L()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogTabMini;->g1:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogTabMini;->g1:Z

    .line 14
    .line 15
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogTabMini;->h0:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogTabMini;->x0:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->d()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogTabMini;->w0:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->d()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method
