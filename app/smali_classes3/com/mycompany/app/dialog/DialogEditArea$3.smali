.class Lcom/mycompany/app/dialog/DialogEditArea$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditArea;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditArea$3;->c:Lcom/mycompany/app/dialog/DialogEditArea;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea$3;->c:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sput-boolean v1, Lcom/mycompany/app/pref/PrefRead;->H:Z

    .line 9
    .line 10
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->b0:Landroid/content/Context;

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    const-string v3, "mNotiArea"

    .line 15
    .line 16
    invoke-static {v2, p1, v3, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-boolean p1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->B0:Z

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->B0:Z

    .line 24
    .line 25
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditArea;->H()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :cond_3
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->l0:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogGuideArea;->dismiss()V

    .line 50
    .line 51
    .line 52
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->l0:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 53
    .line 54
    :cond_4
    new-instance p1, Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 55
    .line 56
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditArea;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 57
    .line 58
    const/4 v3, 0x2

    .line 59
    invoke-direct {p1, v2, v3, v1}, Lcom/mycompany/app/dialog/DialogGuideArea;-><init>(Lcom/mycompany/app/main/MainActivity;ILcom/mycompany/app/dialog/DialogGuideArea$DialogAreaListener;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->l0:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 63
    .line 64
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditArea$10;

    .line 65
    .line 66
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogEditArea$10;-><init>(Lcom/mycompany/app/dialog/DialogEditArea;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
