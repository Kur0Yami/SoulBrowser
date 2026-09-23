.class Lcom/mycompany/app/dialog/DialogSetPrivacy$8$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetPrivacy$8$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetPrivacy$8$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy$8$1$1;->c:Lcom/mycompany/app/dialog/DialogSetPrivacy$8$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy$8$1$1;->c:Lcom/mycompany/app/dialog/DialogSetPrivacy$8$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy$8$1;->c:Lcom/mycompany/app/dialog/DialogSetPrivacy$8;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy$8;->c:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogSetPrivacy;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->Q6(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy$8;->c:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 16
    .line 17
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetPrivacy$9;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogSetPrivacy$9;-><init>(Lcom/mycompany/app/dialog/DialogSetPrivacy;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
