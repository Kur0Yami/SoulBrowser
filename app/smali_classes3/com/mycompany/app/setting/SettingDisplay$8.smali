.class Lcom/mycompany/app/setting/SettingDisplay$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingDisplay;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingDisplay;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingDisplay$8;->a:Lcom/mycompany/app/setting/SettingDisplay;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/setting/SettingDisplay;->p2:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay$8;->a:Lcom/mycompany/app/setting/SettingDisplay;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingDisplay;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingDisplay;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 20

    .line 1
    sget-object v0, Lcom/mycompany/app/setting/SettingDisplay;->r2:[I

    .line 2
    .line 3
    rem-int/lit8 v1, p2, 0x3

    .line 4
    .line 5
    aget v0, v0, v1

    .line 6
    .line 7
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->O:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v0, :cond_0

    .line 11
    .line 12
    move-object/from16 v1, p0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    sput v0, Lcom/mycompany/app/pref/PrefWeb;->O:I

    .line 16
    .line 17
    move-object/from16 v1, p0

    .line 18
    .line 19
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingDisplay$8;->a:Lcom/mycompany/app/setting/SettingDisplay;

    .line 20
    .line 21
    iget-object v4, v3, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 22
    .line 23
    const/16 v5, 0xe

    .line 24
    .line 25
    const-string v6, "mThemeHead"

    .line 26
    .line 27
    invoke-static {v4, v5, v0, v6}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v3, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    sget v4, Lcom/mycompany/app/pref/PrefWeb;->O:I

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    if-ne v4, v2, :cond_1

    .line 38
    .line 39
    sget v6, Lnet/kaki87/soul2/testing/R$string;->site_theme_info:I

    .line 40
    .line 41
    move v11, v6

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v11, v5

    .line 44
    :goto_0
    const/4 v6, 0x2

    .line 45
    if-eq v4, v6, :cond_2

    .line 46
    .line 47
    move/from16 v16, v2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move/from16 v16, v5

    .line 51
    .line 52
    :goto_1
    new-instance v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 53
    .line 54
    sget v9, Lnet/kaki87/soul2/testing/R$string;->header_title:I

    .line 55
    .line 56
    sget-object v4, Lcom/mycompany/app/setting/SettingDisplay;->s2:[I

    .line 57
    .line 58
    sget v5, Lcom/mycompany/app/pref/PrefWeb;->O:I

    .line 59
    .line 60
    aget v10, v4, v5

    .line 61
    .line 62
    const/4 v12, 0x1

    .line 63
    const/16 v8, 0x8

    .line 64
    .line 65
    invoke-direct/range {v7 .. v12}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v7}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, v3, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 72
    .line 73
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 74
    .line 75
    sget v14, Lnet/kaki87/soul2/testing/R$string;->header_color:I

    .line 76
    .line 77
    sget v15, Lcom/mycompany/app/pref/PrefWeb;->Q:I

    .line 78
    .line 79
    const/16 v18, 0x0

    .line 80
    .line 81
    const/16 v19, 0x0

    .line 82
    .line 83
    const/16 v13, 0x9

    .line 84
    .line 85
    move/from16 v17, v16

    .line 86
    .line 87
    invoke-direct/range {v12 .. v19}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZII)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v12}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_2
    return v2
.end method
