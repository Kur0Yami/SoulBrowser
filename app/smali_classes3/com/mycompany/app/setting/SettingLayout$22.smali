.class Lcom/mycompany/app/setting/SettingLayout$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/mycompany/app/setting/SettingLayout;


# direct methods
.method public constructor <init>(IILcom/mycompany/app/setting/SettingLayout;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/mycompany/app/setting/SettingLayout$22;->d:Lcom/mycompany/app/setting/SettingLayout;

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/mycompany/app/setting/SettingLayout$22;->a:Z

    .line 7
    .line 8
    iput p1, p0, Lcom/mycompany/app/setting/SettingLayout$22;->b:I

    .line 9
    .line 10
    iput p2, p0, Lcom/mycompany/app/setting/SettingLayout$22;->c:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingLayout;->J2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLayout$22;->d:Lcom/mycompany/app/setting/SettingLayout;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->w2:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingLayout;->w2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLayout$22;->d:Lcom/mycompany/app/setting/SettingLayout;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingLayout;->O1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_b

    .line 7
    .line 8
    iget-object v2, p1, Lcom/mycompany/app/setting/SettingLayout;->h2:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    iget v3, p0, Lcom/mycompany/app/setting/SettingLayout$22;->c:I

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    iget v5, p0, Lcom/mycompany/app/setting/SettingLayout$22;->b:I

    .line 18
    .line 19
    iget-boolean v6, p0, Lcom/mycompany/app/setting/SettingLayout$22;->a:Z

    .line 20
    .line 21
    if-ne p2, v1, :cond_7

    .line 22
    .line 23
    xor-int/lit8 p2, v6, 0x1

    .line 24
    .line 25
    invoke-static {p1, p2}, Lcom/mycompany/app/setting/SettingLayout;->E0(Lcom/mycompany/app/setting/SettingLayout;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingLayout;->O1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 34
    .line 35
    if-eqz v0, :cond_5

    .line 36
    .line 37
    iget-object v2, p1, Lcom/mycompany/app/setting/SettingLayout;->h2:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 38
    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    if-nez v5, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    if-eqz v6, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/main/MenuIconAdapter;->d()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sub-int/2addr v0, v1

    .line 52
    if-lt v5, v0, :cond_5

    .line 53
    .line 54
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingLayout;->h2:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/mycompany/app/main/MenuIconAdapter;->d()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    goto :goto_1

    .line 61
    :cond_4
    invoke-virtual {v2}, Lcom/mycompany/app/main/MenuIconAdapter;->d()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    sub-int/2addr v0, v1

    .line 66
    if-lt v5, v0, :cond_5

    .line 67
    .line 68
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingLayout;->O1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/mycompany/app/main/MenuIconAdapter;->d()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    goto :goto_1

    .line 75
    :cond_5
    :goto_0
    move v4, v5

    .line 76
    :goto_1
    if-eqz v6, :cond_6

    .line 77
    .line 78
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingLayout;->O1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 79
    .line 80
    invoke-virtual {v0, v5}, Lcom/mycompany/app/main/MenuIconAdapter;->E(I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingLayout;->h2:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 84
    .line 85
    invoke-virtual {v0, v4, v3}, Lcom/mycompany/app/main/MenuIconAdapter;->C(II)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    goto :goto_2

    .line 90
    :cond_6
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingLayout;->h2:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 91
    .line 92
    invoke-virtual {v0, v5}, Lcom/mycompany/app/main/MenuIconAdapter;->E(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingLayout;->O1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 96
    .line 97
    invoke-virtual {v0, v4, v3}, Lcom/mycompany/app/main/MenuIconAdapter;->C(II)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    :goto_2
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingLayout;->U0()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0, p2}, Lcom/mycompany/app/setting/SettingLayout;->a1(IZ)V

    .line 105
    .line 106
    .line 107
    return v1

    .line 108
    :cond_7
    const/4 v7, 0x2

    .line 109
    if-ne p2, v7, :cond_a

    .line 110
    .line 111
    if-eqz v6, :cond_8

    .line 112
    .line 113
    iget p2, p1, Lcom/mycompany/app/setting/SettingLayout;->C1:I

    .line 114
    .line 115
    invoke-virtual {v0, v5, v4, p2}, Lcom/mycompany/app/main/MenuIconAdapter;->K(III)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_8
    iget p2, p1, Lcom/mycompany/app/setting/SettingLayout;->C1:I

    .line 120
    .line 121
    invoke-virtual {v2, v5, v4, p2}, Lcom/mycompany/app/main/MenuIconAdapter;->K(III)V

    .line 122
    .line 123
    .line 124
    :goto_3
    if-ne v3, v1, :cond_9

    .line 125
    .line 126
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingLayout;->a2:Landroid/widget/RelativeLayout;

    .line 127
    .line 128
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    :cond_9
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingLayout;->U0()V

    .line 132
    .line 133
    .line 134
    return v1

    .line 135
    :cond_a
    invoke-static {v5, v3, p1, v6}, Lcom/mycompany/app/setting/SettingLayout;->J0(IILcom/mycompany/app/setting/SettingLayout;Z)V

    .line 136
    .line 137
    .line 138
    :cond_b
    :goto_4
    return v1
.end method
