.class Lcom/mycompany/app/main/image/MainImagePreview$60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/image/MainImagePreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$60;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$60;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    sput-boolean p1, Lcom/mycompany/app/pref/PrefAlbum;->E:Z

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 9
    .line 10
    const-string v2, "mOcrAuto"

    .line 11
    .line 12
    invoke-static {p1, v1, v2, p1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-boolean p1, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImagePreview;->K0()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
