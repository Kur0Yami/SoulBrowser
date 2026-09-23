.class Lcom/mycompany/app/dialog/DialogSetPrivacy$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetPrivacy$9;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetPrivacy$9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy$9$1;->c:Lcom/mycompany/app/dialog/DialogSetPrivacy$9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy$9$1;->c:Lcom/mycompany/app/dialog/DialogSetPrivacy$9;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy$9;->c:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->n0:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->l0:Z

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->c0:Lcom/mycompany/app/dialog/DialogSetPrivacy$TabDeletedListener;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Lcom/mycompany/app/dialog/DialogSetPrivacy$TabDeletedListener;->a()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->b0:Landroid/content/Context;

    .line 29
    .line 30
    sget v2, Lnet/kaki87/soul2/testing/R$string;->deleted:I

    .line 31
    .line 32
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetPrivacy;->dismiss()V

    .line 36
    .line 37
    .line 38
    return-void
.end method
