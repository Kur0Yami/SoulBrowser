.class Lcom/mycompany/app/dialog/DialogViewRead$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$34;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget p1, Lcom/mycompany/app/dialog/DialogViewRead;->S2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$34;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->H()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogViewRead;->b0(Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->g:Landroid/content/Context;

    .line 20
    .line 21
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->s0:Z

    .line 29
    .line 30
    const/16 v1, -0x4d2

    .line 31
    .line 32
    iput v1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->w0:I

    .line 33
    .line 34
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->z0:Z

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->G0()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->V()V

    .line 40
    .line 41
    .line 42
    return-void
.end method
