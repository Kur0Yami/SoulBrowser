.class Lcom/mycompany/app/dialog/DialogSetTrans$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTrans$7;->a:Lcom/mycompany/app/dialog/DialogSetTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetTrans;->u0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans$7;->a:Lcom/mycompany/app/dialog/DialogSetTrans;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->l0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    sget-object p1, Lcom/mycompany/app/setting/SettingTrans;->i2:[I

    .line 2
    .line 3
    rem-int/lit8 p2, p2, 0x3

    .line 4
    .line 5
    aget p1, p1, p2

    .line 6
    .line 7
    sget p2, Lcom/mycompany/app/pref/PrefAlbum;->u:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogSetTrans$7;->a:Lcom/mycompany/app/dialog/DialogSetTrans;

    .line 14
    .line 15
    iput p1, p2, Lcom/mycompany/app/dialog/DialogSetTrans;->p0:I

    .line 16
    .line 17
    sput p1, Lcom/mycompany/app/pref/PrefAlbum;->u:I

    .line 18
    .line 19
    iget-object v1, p2, Lcom/mycompany/app/dialog/DialogSetTrans;->b0:Landroid/content/Context;

    .line 20
    .line 21
    const-string v2, "mTransMode2"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {v1, v3, p1, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p2, Lcom/mycompany/app/dialog/DialogSetTrans;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    sget-object v2, Lcom/mycompany/app/setting/SettingTrans;->j2:[I

    .line 32
    .line 33
    aget v2, v2, p1

    .line 34
    .line 35
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p2, Lcom/mycompany/app/dialog/DialogSetTrans;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 39
    .line 40
    sget-object v1, Lcom/mycompany/app/setting/SettingTrans;->k2:[I

    .line 41
    .line 42
    aget p1, v1, p1

    .line 43
    .line 44
    invoke-virtual {p2, v3, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->C(II)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return v0
.end method
