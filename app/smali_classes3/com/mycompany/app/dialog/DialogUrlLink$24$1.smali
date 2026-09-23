.class Lcom/mycompany/app/dialog/DialogUrlLink$24$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogUrlLink$24;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink$24;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$24$1;->c:Lcom/mycompany/app/dialog/DialogUrlLink$24;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink$24$1;->c:Lcom/mycompany/app/dialog/DialogUrlLink$24;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogUrlLink$24;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/dialog/DialogUrlLink;->c1:I

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogUrlLink$23;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogUrlLink$23;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
