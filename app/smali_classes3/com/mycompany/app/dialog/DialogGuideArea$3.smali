.class Lcom/mycompany/app/dialog/DialogGuideArea$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogGuideArea;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogGuideArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogGuideArea$3;->c:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    sget-boolean p1, Lcom/mycompany/app/pref/PrefRead;->I:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGuideArea$3;->c:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    sput-boolean p1, Lcom/mycompany/app/pref/PrefRead;->I:Z

    .line 9
    .line 10
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    const-string v3, "mNotiAre2"

    .line 15
    .line 16
    invoke-static {v2, v1, v3, p1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->l0:Lcom/mycompany/app/view/MyButtonImage;

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
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->b0:Lcom/mycompany/app/dialog/DialogGuideArea$DialogAreaListener;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/mycompany/app/dialog/DialogGuideArea$DialogAreaListener;->c()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method
