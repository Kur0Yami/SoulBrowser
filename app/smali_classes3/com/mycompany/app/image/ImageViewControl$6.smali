.class Lcom/mycompany/app/image/ImageViewControl$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewControl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewControl$6;->c:Lcom/mycompany/app/image/ImageViewControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewControl$6;->c:Lcom/mycompany/app/image/ImageViewControl;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/image/ImageViewControl;->C:Lcom/mycompany/app/image/ImageViewControl$ControlListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->l:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    sput-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->l:Z

    .line 14
    .line 15
    iget-object v1, p1, Lcom/mycompany/app/image/ImageViewControl;->z:Landroid/content/Context;

    .line 16
    .line 17
    const/4 v2, 0x7

    .line 18
    const-string v3, "mNotiCrop"

    .line 19
    .line 20
    invoke-static {v2, v1, v3, v0}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p1, Lcom/mycompany/app/image/ImageViewControl;->J:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object p1, p1, Lcom/mycompany/app/image/ImageViewControl;->C:Lcom/mycompany/app/image/ImageViewControl$ControlListener;

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/mycompany/app/image/ImageViewControl$ControlListener;->l()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
