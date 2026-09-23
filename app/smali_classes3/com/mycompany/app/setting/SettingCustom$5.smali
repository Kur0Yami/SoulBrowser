.class Lcom/mycompany/app/setting/SettingCustom$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingCustom;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingCustom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingCustom$5;->a:Lcom/mycompany/app/setting/SettingCustom;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/setting/SettingCustom;->h2:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCustom$5;->a:Lcom/mycompany/app/setting/SettingCustom;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingCustom;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingCustom;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    rem-int/lit8 p2, p2, 0x3

    .line 2
    .line 3
    sget p1, Lcom/mycompany/app/pref/PrefPdf;->H:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sput p2, Lcom/mycompany/app/pref/PrefPdf;->H:I

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingCustom$5;->a:Lcom/mycompany/app/setting/SettingCustom;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 14
    .line 15
    const/4 v2, 0x7

    .line 16
    const-string v3, "mAddrType2"

    .line 17
    .line 18
    invoke-static {v1, v2, p2, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    sget-object v1, Lcom/mycompany/app/setting/SettingCustom;->h2:[I

    .line 26
    .line 27
    aget p2, v1, p2

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    invoke-virtual {p1, v1, p2}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return v0
.end method
