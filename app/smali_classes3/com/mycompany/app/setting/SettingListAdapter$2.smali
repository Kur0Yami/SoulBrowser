.class Lcom/mycompany/app/setting/SettingListAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingListAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingListAdapter$2;->c:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/mycompany/app/setting/SettingListAdapter;->y(Landroid/view/View;)Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_3

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingListAdapter$2;->c:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->w(I)Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_1
    iget-object v2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->z:Lcom/mycompany/app/view/MySwitchView;

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_2
    iget-boolean v3, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->s:Z

    .line 27
    .line 28
    if-nez v3, :cond_7

    .line 29
    .line 30
    iget-boolean v3, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    xor-int/2addr v3, v4

    .line 34
    iput-boolean v3, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 35
    .line 36
    invoke-virtual {v2, v3, v4}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    if-eqz v2, :cond_7

    .line 42
    .line 43
    iget-boolean v3, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->l:Z

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    iget-boolean v3, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 48
    .line 49
    if-nez v3, :cond_3

    .line 50
    .line 51
    const v3, -0xbbcca

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    iget-boolean v3, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->m:Z

    .line 59
    .line 60
    if-eqz v3, :cond_5

    .line 61
    .line 62
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 63
    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    const v3, -0x50506

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const/high16 v3, -0x1000000

    .line 71
    .line 72
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_5
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 77
    .line 78
    if-eqz v3, :cond_6

    .line 79
    .line 80
    const v3, -0x3e3e3f

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_6
    const v3, -0x9e9e9f

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    .line 89
    .line 90
    :cond_7
    :goto_2
    iget-object v1, v1, Lcom/mycompany/app/setting/SettingListAdapter;->h:Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;

    .line 91
    .line 92
    if-eqz v1, :cond_8

    .line 93
    .line 94
    iget v2, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 95
    .line 96
    iget-boolean v0, v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->k:Z

    .line 97
    .line 98
    const/4 v3, 0x0

    .line 99
    invoke-interface {v1, p1, v2, v0, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;->a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V

    .line 100
    .line 101
    .line 102
    :cond_8
    :goto_3
    return-void
.end method
