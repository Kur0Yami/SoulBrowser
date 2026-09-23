.class Lcom/mycompany/app/dialog/DialogEditScript$WebAppInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogEditScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogEditScript;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditScript;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditScript$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogEditScript;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onEditText(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogEditScript;->t0:I

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogEditScript;

    .line 11
    .line 12
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->c0:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->b0:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    xor-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    iput-boolean p1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->p0:Z

    .line 23
    .line 24
    iget-object p1, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditScript$17;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogEditScript$17;-><init>(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
