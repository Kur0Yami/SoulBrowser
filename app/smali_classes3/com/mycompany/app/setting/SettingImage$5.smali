.class Lcom/mycompany/app/setting/SettingImage$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingImage$5;->a:Lcom/mycompany/app/setting/SettingImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingImage;->Z1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImage$5;->a:Lcom/mycompany/app/setting/SettingImage;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImage;->X1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingImage;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 5

    .line 1
    sget-object p1, Lcom/mycompany/app/main/MainConst;->K:[I

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    rem-int/2addr p2, v0

    .line 5
    sget v0, Lcom/mycompany/app/pref/PrefImage;->p:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sput p2, Lcom/mycompany/app/pref/PrefImage;->p:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImage$5;->a:Lcom/mycompany/app/setting/SettingImage;

    .line 14
    .line 15
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    const-string v4, "mScreenOff"

    .line 19
    .line 20
    invoke-static {v2, v3, p2, v4}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p2, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    sget v2, Lcom/mycompany/app/pref/PrefImage;->p:I

    .line 28
    .line 29
    aget p1, p1, v2

    .line 30
    .line 31
    const/4 v2, 0x7

    .line 32
    invoke-virtual {p2, v2, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 36
    .line 37
    sget-object p2, Lcom/mycompany/app/main/MainConst;->L:[I

    .line 38
    .line 39
    sget v0, Lcom/mycompany/app/pref/PrefImage;->p:I

    .line 40
    .line 41
    aget p2, p2, v0

    .line 42
    .line 43
    invoke-virtual {p1, v2, p2}, Lcom/mycompany/app/setting/SettingListAdapter;->C(II)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return v1
.end method
