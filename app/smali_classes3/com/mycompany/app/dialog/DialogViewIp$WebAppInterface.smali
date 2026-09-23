.class Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogViewIp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewIp;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewIp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogViewIp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onIpDet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogViewIp;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->e0:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->e0:Z

    .line 9
    .line 10
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->d0:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogViewIp;->O(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->d0:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-boolean p1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->f0:Z

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_2
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->K0:Ljava/lang/String;

    .line 31
    .line 32
    new-instance p1, Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface$1;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface$1;-><init>(Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
