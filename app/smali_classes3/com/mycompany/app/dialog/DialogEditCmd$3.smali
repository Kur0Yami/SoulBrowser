.class Lcom/mycompany/app/dialog/DialogEditCmd$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditCmd;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditCmd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditCmd$3;->c:Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    sget-boolean p1, Lcom/mycompany/app/pref/PrefRead;->H:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditCmd$3;->c:Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->H:Z

    .line 9
    .line 10
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->b0:Landroid/content/Context;

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    const-string v3, "mNotiArea"

    .line 15
    .line 16
    invoke-static {v2, v1, v3, p1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->o0:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :cond_2
    const/4 v1, 0x0

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogGuideArea;->dismiss()V

    .line 40
    .line 41
    .line 42
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->o0:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 43
    .line 44
    :cond_3
    new-instance p1, Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 45
    .line 46
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    invoke-direct {p1, v2, v3, v1}, Lcom/mycompany/app/dialog/DialogGuideArea;-><init>(Lcom/mycompany/app/main/MainActivity;ILcom/mycompany/app/dialog/DialogGuideArea$DialogAreaListener;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->o0:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 53
    .line 54
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditCmd$10;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogEditCmd$10;-><init>(Lcom/mycompany/app/dialog/DialogEditCmd;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
