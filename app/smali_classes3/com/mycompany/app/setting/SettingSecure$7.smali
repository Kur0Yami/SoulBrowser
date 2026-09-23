.class Lcom/mycompany/app/setting/SettingSecure$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/mycompany/app/setting/SettingSecure;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSecure;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSecure$7;->c:Lcom/mycompany/app/setting/SettingSecure;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingSecure$7;->a:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/setting/SettingSecure$7;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingSecure;->d2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSecure$7;->c:Lcom/mycompany/app/setting/SettingSecure;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSecure;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingSecure;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 5

    .line 1
    sget-object p1, Lcom/mycompany/app/main/MainConst;->U:[I

    .line 2
    .line 3
    iget v0, p0, Lcom/mycompany/app/setting/SettingSecure$7;->a:I

    .line 4
    .line 5
    rem-int/2addr p2, v0

    .line 6
    aget p1, p1, p2

    .line 7
    .line 8
    const/16 p2, 0x9

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSecure$7;->c:Lcom/mycompany/app/setting/SettingSecure;

    .line 11
    .line 12
    iget v1, p0, Lcom/mycompany/app/setting/SettingSecure$7;->b:I

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    sget v3, Lcom/mycompany/app/pref/PrefSecret;->F:I

    .line 18
    .line 19
    if-ne v3, p1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    sput p1, Lcom/mycompany/app/pref/PrefSecret;->F:I

    .line 23
    .line 24
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 25
    .line 26
    const-string v4, "mSecureDnt"

    .line 27
    .line 28
    invoke-static {v3, p2, p1, v4}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v3, 0x2

    .line 33
    if-ne v1, v3, :cond_3

    .line 34
    .line 35
    sget v3, Lcom/mycompany/app/pref/PrefSecret;->G:I

    .line 36
    .line 37
    if-ne v3, p1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    sput p1, Lcom/mycompany/app/pref/PrefSecret;->G:I

    .line 41
    .line 42
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 43
    .line 44
    const-string v4, "mSecureGpc"

    .line 45
    .line 46
    invoke-static {v3, p2, p1, v4}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    sget v3, Lcom/mycompany/app/pref/PrefSecret;->H:I

    .line 51
    .line 52
    if-ne v3, p1, :cond_4

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    sput p1, Lcom/mycompany/app/pref/PrefSecret;->H:I

    .line 56
    .line 57
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 58
    .line 59
    const-string v4, "mSecureKey"

    .line 60
    .line 61
    invoke-static {v3, p2, p1, v4}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-object p2, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 65
    .line 66
    if-eqz p2, :cond_5

    .line 67
    .line 68
    sget-object v0, Lcom/mycompany/app/main/MainConst;->V:[I

    .line 69
    .line 70
    aget p1, v0, p1

    .line 71
    .line 72
    invoke-virtual {p2, v1, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 73
    .line 74
    .line 75
    :cond_5
    :goto_1
    return v2
.end method
