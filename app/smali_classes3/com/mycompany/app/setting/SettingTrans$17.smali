.class Lcom/mycompany/app/setting/SettingTrans$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingTrans$17;->a:Lcom/mycompany/app/setting/SettingTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/setting/SettingTrans;->i2:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTrans$17;->a:Lcom/mycompany/app/setting/SettingTrans;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingTrans;->e2:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingTrans;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    move p2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move p2, p1

    .line 8
    :goto_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->w:Z

    .line 9
    .line 10
    if-ne v1, p2, :cond_1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_1
    sput-boolean p2, Lcom/mycompany/app/pref/PrefAlbum;->w:Z

    .line 14
    .line 15
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingTrans$17;->a:Lcom/mycompany/app/setting/SettingTrans;

    .line 16
    .line 17
    iget-object v2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 18
    .line 19
    const-string v3, "mTransPage"

    .line 20
    .line 21
    invoke-static {p1, v2, v3, p2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 25
    .line 26
    if-eqz p2, :cond_4

    .line 27
    .line 28
    sget-boolean v2, Lcom/mycompany/app/pref/PrefAlbum;->w:Z

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    sget v3, Lnet/kaki87/soul2/testing/R$string;->float_button:I

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    sget v3, Lnet/kaki87/soul2/testing/R$string;->address_bar:I

    .line 36
    .line 37
    :goto_1
    if-eqz v2, :cond_3

    .line 38
    .line 39
    sget p1, Lnet/kaki87/soul2/testing/R$string;->drag_move_guide:I

    .line 40
    .line 41
    :cond_3
    const/4 v2, 0x6

    .line 42
    invoke-virtual {p2, v2, v3}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 43
    .line 44
    .line 45
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 46
    .line 47
    invoke-virtual {p2, v2, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->C(II)V

    .line 48
    .line 49
    .line 50
    :cond_4
    :goto_2
    return v0
.end method
