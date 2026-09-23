.class public Lcom/google/android/material/navigation/NavigationBarMenuBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->a:I

    .line 6
    .line 7
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->b:I

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 15
    .line 16
    .line 17
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->a:I

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->b:I

    .line 20
    .line 21
    move v2, v0

    .line 22
    :goto_0
    iget-object v3, p1, Landroidx/appcompat/view/menu/MenuBuilder;->f:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x1

    .line 29
    if-ge v2, v3, :cond_6

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_4

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_0

    .line 46
    .line 47
    invoke-static {v4, v1}, Landroid/support/v4/media/a;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    instance-of v5, v5, Lcom/google/android/material/navigation/DividerMenuItem;

    .line 52
    .line 53
    if-nez v5, :cond_0

    .line 54
    .line 55
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_0

    .line 60
    .line 61
    new-instance v5, Lcom/google/android/material/navigation/DividerMenuItem;

    .line 62
    .line 63
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    move v6, v0

    .line 77
    :goto_1
    invoke-interface {v5}, Landroid/view/Menu;->size()I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-ge v6, v7, :cond_3

    .line 82
    .line 83
    invoke-interface {v5, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-nez v8, :cond_1

    .line 92
    .line 93
    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    invoke-interface {v7}, Landroid/view/MenuItem;->isVisible()Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-eqz v7, :cond_2

    .line 104
    .line 105
    iget v7, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->a:I

    .line 106
    .line 107
    add-int/2addr v7, v4

    .line 108
    iput v7, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->a:I

    .line 109
    .line 110
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    new-instance v3, Lcom/google/android/material/navigation/DividerMenuItem;

    .line 114
    .line 115
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_5

    .line 130
    .line 131
    iget v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->a:I

    .line 132
    .line 133
    add-int/2addr v3, v4

    .line 134
    iput v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->a:I

    .line 135
    .line 136
    iget v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->b:I

    .line 137
    .line 138
    add-int/2addr v3, v4

    .line 139
    iput v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuBuilder;->b:I

    .line 140
    .line 141
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-nez p1, :cond_7

    .line 149
    .line 150
    invoke-static {v4, v1}, Landroid/support/v4/media/a;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    instance-of p1, p1, Lcom/google/android/material/navigation/DividerMenuItem;

    .line 155
    .line 156
    if-eqz p1, :cond_7

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    sub-int/2addr p1, v4

    .line 163
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    :cond_7
    return-void
.end method
