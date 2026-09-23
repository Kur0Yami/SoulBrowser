.class Lcom/mycompany/app/dialog/DialogSetReset$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetReset$5;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetReset$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetReset$5$1;->c:Lcom/mycompany/app/dialog/DialogSetReset$5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetReset$5$1;->c:Lcom/mycompany/app/dialog/DialogSetReset$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetReset$5;->c:Lcom/mycompany/app/dialog/DialogSetReset;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->t0:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->a0:Landroid/content/Context;

    .line 10
    .line 11
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->b0:Lcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-boolean v0, v0, Lcom/mycompany/app/dialog/DialogSetReset;->s0:Z

    .line 21
    .line 22
    invoke-interface {v1, v0}, Lcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;->a(Z)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method
