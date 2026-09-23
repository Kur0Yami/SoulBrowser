.class Lcom/mycompany/app/dialog/DialogCreateAlbum$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogCreateAlbum;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$17;->a:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->I1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$17;->a:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->p1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->p1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    const/16 p1, 0x9

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$17;->a:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p2, v1, :cond_0

    .line 7
    .line 8
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 9
    .line 10
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->O4(Lcom/mycompany/app/main/MainActivity;I)V

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    const/4 v2, 0x2

    .line 15
    if-ne p2, v2, :cond_2

    .line 16
    .line 17
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 18
    .line 19
    const/16 v2, 0x1e

    .line 20
    .line 21
    invoke-static {p2, v2}, Lcom/mycompany/app/main/MainUtil;->D4(Landroid/app/Activity;I)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {p1, p2, v2}, Lcom/mycompany/app/main/MainUtil;->C4(ILcom/mycompany/app/main/MainActivity;Z)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->t1:Landroid/net/Uri;

    .line 36
    .line 37
    return v1

    .line 38
    :cond_2
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->w1:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->v1:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/dialog/DialogCreateAlbum;->I(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_0
    return v1
.end method
