.class Lcom/mycompany/app/setting/SettingMedia$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingMedia;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMedia;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMedia$5;->a:Lcom/mycompany/app/setting/SettingMedia;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/setting/SettingMedia;->d2:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMedia$5;->a:Lcom/mycompany/app/setting/SettingMedia;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMedia;->X1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingMedia;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingMedia$5;->a:Lcom/mycompany/app/setting/SettingMedia;

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/setting/SettingMedia;->b2:I

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    const/16 v3, 0xf

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/16 v5, 0xa

    .line 11
    .line 12
    if-ne v0, v5, :cond_2

    .line 13
    .line 14
    sget-object v0, Lcom/mycompany/app/setting/SettingMedia;->d2:[I

    .line 15
    .line 16
    rem-int/lit8 p2, p2, 0x4

    .line 17
    .line 18
    aget p2, v0, p2

    .line 19
    .line 20
    sget v0, Lcom/mycompany/app/pref/PrefZone;->r:I

    .line 21
    .line 22
    if-ne v0, p2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sput p2, Lcom/mycompany/app/pref/PrefZone;->r:I

    .line 26
    .line 27
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 28
    .line 29
    const-string v6, "mYouPos"

    .line 30
    .line 31
    invoke-static {v0, v3, p2, v6}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 35
    .line 36
    if-eqz v0, :cond_5

    .line 37
    .line 38
    sget v3, Lcom/mycompany/app/pref/PrefZone;->r:I

    .line 39
    .line 40
    if-ne v3, v1, :cond_1

    .line 41
    .line 42
    sget v2, Lnet/kaki87/soul2/testing/R$string;->drag_move_guide:I

    .line 43
    .line 44
    :cond_1
    sget-object v1, Lcom/mycompany/app/setting/SettingMedia;->e2:[I

    .line 45
    .line 46
    aget p2, v1, p2

    .line 47
    .line 48
    invoke-virtual {v0, v5, p2}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 52
    .line 53
    invoke-virtual {p1, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->C(II)V

    .line 54
    .line 55
    .line 56
    return v4

    .line 57
    :cond_2
    sget-object v0, Lcom/mycompany/app/setting/SettingMedia;->d2:[I

    .line 58
    .line 59
    rem-int/lit8 p2, p2, 0x4

    .line 60
    .line 61
    aget p2, v0, p2

    .line 62
    .line 63
    sget v0, Lcom/mycompany/app/pref/PrefZone;->n:I

    .line 64
    .line 65
    if-ne v0, p2, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    sput p2, Lcom/mycompany/app/pref/PrefZone;->n:I

    .line 69
    .line 70
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 71
    .line 72
    const-string v5, "mDownPos"

    .line 73
    .line 74
    invoke-static {v0, v3, p2, v5}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    sget v3, Lcom/mycompany/app/pref/PrefZone;->n:I

    .line 82
    .line 83
    if-ne v3, v1, :cond_4

    .line 84
    .line 85
    sget v2, Lnet/kaki87/soul2/testing/R$string;->drag_move_guide:I

    .line 86
    .line 87
    :cond_4
    sget-object v1, Lcom/mycompany/app/setting/SettingMedia;->e2:[I

    .line 88
    .line 89
    aget p2, v1, p2

    .line 90
    .line 91
    invoke-virtual {v0, v4, p2}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 95
    .line 96
    invoke-virtual {p1, v4, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->C(II)V

    .line 97
    .line 98
    .line 99
    :cond_5
    :goto_0
    return v4
.end method
