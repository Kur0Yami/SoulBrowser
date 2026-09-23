.class Lcom/mycompany/app/dialog/DialogImageType$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogImageType;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogImageType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogImageType$16;->c:Lcom/mycompany/app/dialog/DialogImageType;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    sget p1, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageType$16;->c:Lcom/mycompany/app/dialog/DialogImageType;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->e0:I

    .line 6
    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    sput v1, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogImageType;->a0:Landroid/content/Context;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const-string v4, "mImageType2"

    .line 15
    .line 16
    invoke-static {v2, v3, v1, v4}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->b0:Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType;->c0:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 24
    .line 25
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 26
    .line 27
    invoke-static {v1, p1, v2}, Lcom/mycompany/app/main/MainUtil;->f(Lcom/mycompany/app/data/DataUrl$ImgCntItem;II)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogImageType;->b0:Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;

    .line 34
    .line 35
    invoke-interface {p1}, Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;->a()V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogImageType;->dismiss()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
