.class Lcom/mycompany/app/setting/SettingClean$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingClean;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingClean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingClean$15;->a:Lcom/mycompany/app/setting/SettingClean;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/setting/SettingClean;->v2:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean$15;->a:Lcom/mycompany/app/setting/SettingClean;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingClean;->g2:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingClean;->g2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 5

    .line 1
    sget-object p1, Lcom/mycompany/app/setting/SettingClean;->C2:[I

    .line 2
    .line 3
    rem-int/lit8 p2, p2, 0x3

    .line 4
    .line 5
    aget p1, p1, p2

    .line 6
    .line 7
    sget p2, Lcom/mycompany/app/pref/PrefPdf;->w:I

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
    sput p1, Lcom/mycompany/app/pref/PrefPdf;->w:I

    .line 14
    .line 15
    iget-object p2, p0, Lcom/mycompany/app/setting/SettingClean$15;->a:Lcom/mycompany/app/setting/SettingClean;

    .line 16
    .line 17
    iget-object v1, p2, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 18
    .line 19
    const/4 v2, 0x7

    .line 20
    const-string v3, "mAppBlock2"

    .line 21
    .line 22
    invoke-static {v1, v2, p1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p2, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 26
    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    sget-object v2, Lcom/mycompany/app/setting/SettingClean;->B2:[I

    .line 30
    .line 31
    aget p1, v2, p1

    .line 32
    .line 33
    const/16 v2, 0xe

    .line 34
    .line 35
    invoke-virtual {v1, v2, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p2, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/mycompany/app/setting/SettingClean;->Q0()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->v(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p1, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->w(I)Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    iget v4, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 55
    .line 56
    if-eq v4, v2, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iput-object p2, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->i:Ljava/lang/String;

    .line 60
    .line 61
    const/4 p2, 0x0

    .line 62
    iput p2, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->h:I

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->x(I)Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    if-nez v1, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object v1, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->i:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_3

    .line 82
    .line 83
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    iget-object v2, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->i:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    return v0

    .line 96
    :cond_3
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    const/16 p2, 0x8

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_0
    return v0
.end method
