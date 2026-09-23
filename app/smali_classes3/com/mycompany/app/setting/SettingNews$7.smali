.class Lcom/mycompany/app/setting/SettingNews$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingNews;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingNews;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingNews$7;->a:Lcom/mycompany/app/setting/SettingNews;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/setting/SettingNews;->n2:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews$7;->a:Lcom/mycompany/app/setting/SettingNews;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingNews;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingNews;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    const/4 p1, 0x2

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews$7;->a:Lcom/mycompany/app/setting/SettingNews;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne p2, p1, :cond_3

    .line 6
    .line 7
    sget-object p1, Lcom/mycompany/app/setting/SettingNews;->n2:[I

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingNews;->W0()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    iget-object p1, v0, Lcom/mycompany/app/setting/SettingNews;->b2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, v0, Lcom/mycompany/app/setting/SettingNews;->b2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 25
    .line 26
    :cond_1
    iget p1, v0, Lcom/mycompany/app/setting/SettingNews;->m2:I

    .line 27
    .line 28
    if-gtz p1, :cond_2

    .line 29
    .line 30
    const/4 p1, 0x5

    .line 31
    :cond_2
    new-instance p2, Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 32
    .line 33
    new-instance v2, Lcom/mycompany/app/setting/SettingNews$8;

    .line 34
    .line 35
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingNews$8;-><init>(Lcom/mycompany/app/setting/SettingNews;)V

    .line 36
    .line 37
    .line 38
    const/16 v3, 0x8

    .line 39
    .line 40
    invoke-direct {p2, v0, v3, p1, v2}, Lcom/mycompany/app/dialog/DialogSeekSimple;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, v0, Lcom/mycompany/app/setting/SettingNews;->b2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 44
    .line 45
    new-instance p1, Lcom/mycompany/app/setting/SettingNews$9;

    .line 46
    .line 47
    invoke-direct {p1, v0}, Lcom/mycompany/app/setting/SettingNews$9;-><init>(Lcom/mycompany/app/setting/SettingNews;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 51
    .line 52
    .line 53
    return v1

    .line 54
    :cond_3
    if-ne p2, v1, :cond_4

    .line 55
    .line 56
    const/4 p2, -0x1

    .line 57
    :cond_4
    invoke-static {v0, p2}, Lcom/mycompany/app/setting/SettingNews;->O0(Lcom/mycompany/app/setting/SettingNews;I)V

    .line 58
    .line 59
    .line 60
    return v1
.end method
