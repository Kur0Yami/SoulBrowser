.class Lcom/mycompany/app/setting/SettingSecure$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/setting/SettingSecure;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSecure;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSecure$8;->b:Lcom/mycompany/app/setting/SettingSecure;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingSecure$8;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingSecure;->d2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSecure$8;->b:Lcom/mycompany/app/setting/SettingSecure;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSecure;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingSecure;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 11

    .line 1
    sget-object p1, Lcom/mycompany/app/main/MainConst;->S:[I

    .line 2
    .line 3
    iget v0, p0, Lcom/mycompany/app/setting/SettingSecure$8;->a:I

    .line 4
    .line 5
    rem-int/2addr p2, v0

    .line 6
    aget p1, p1, p2

    .line 7
    .line 8
    sget p2, Lcom/mycompany/app/pref/PrefSecret;->q:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-ne p2, p1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    sput p1, Lcom/mycompany/app/pref/PrefSecret;->q:I

    .line 15
    .line 16
    iget-object p2, p0, Lcom/mycompany/app/setting/SettingSecure$8;->b:Lcom/mycompany/app/setting/SettingSecure;

    .line 17
    .line 18
    iget-object v1, p2, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 19
    .line 20
    const/16 v2, 0x9

    .line 21
    .line 22
    const-string v3, "mShotType"

    .line 23
    .line 24
    invoke-static {v1, v2, p1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p2, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    sget v2, Lcom/mycompany/app/pref/PrefSecret;->q:I

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    move v8, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v2, 0x0

    .line 38
    move v8, v2

    .line 39
    :goto_0
    sget-object v2, Lcom/mycompany/app/main/MainConst;->T:[I

    .line 40
    .line 41
    aget p1, v2, p1

    .line 42
    .line 43
    const/16 v2, 0xa

    .line 44
    .line 45
    invoke-virtual {v1, v2, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p2, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 49
    .line 50
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 51
    .line 52
    sget v5, Lnet/kaki87/soul2/testing/R$string;->only_secret:I

    .line 53
    .line 54
    sget-boolean v7, Lcom/mycompany/app/pref/PrefSecret;->r:Z

    .line 55
    .line 56
    const/4 v10, 0x2

    .line 57
    const/16 v4, 0xb

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    move v9, v8

    .line 61
    invoke-direct/range {v3 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v3}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_1
    return v0
.end method
