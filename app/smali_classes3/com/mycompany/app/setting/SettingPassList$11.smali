.class Lcom/mycompany/app/setting/SettingPassList$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDeleteItem$DelItemListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/setting/SettingPassList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingPassList;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPassList$11;->b:Lcom/mycompany/app/setting/SettingPassList;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingPassList$11;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList$11;->b:Lcom/mycompany/app/setting/SettingPassList;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->s2:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingPassList;->d2:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 6
    .line 7
    if-eqz v2, :cond_a

    .line 8
    .line 9
    const-string v2, "DbBookPass_table"

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 14
    .line 15
    iget-wide v4, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 16
    .line 17
    sget-object v1, Lcom/mycompany/app/db/book/DbBookPass;->c:Lcom/mycompany/app/db/book/DbBookPass;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    const-wide/16 v6, 0x0

    .line 22
    .line 23
    cmp-long v1, v4, v6

    .line 24
    .line 25
    if-gtz v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbBookPass;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPass;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1, v2, v4, v5}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->d2:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 40
    .line 41
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingPassAdapter;->d:Ljava/util/List;

    .line 42
    .line 43
    if-eqz v2, :cond_7

    .line 44
    .line 45
    iget v3, p0, Lcom/mycompany/app/setting/SettingPassList$11;->a:I

    .line 46
    .line 47
    if-ltz v3, :cond_7

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    add-int/lit8 v2, v2, -0x1

    .line 54
    .line 55
    if-lt v3, v2, :cond_2

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_2
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingPassAdapter;->d:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 68
    .line 69
    sget-boolean v3, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 70
    .line 71
    sget-object v4, Lcom/mycompany/app/db/book/DbBookPass;->c:Lcom/mycompany/app/db/book/DbBookPass;

    .line 72
    .line 73
    if-nez v1, :cond_4

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    if-eqz v3, :cond_5

    .line 77
    .line 78
    const-string v3, "1"

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    const-string v3, "0"

    .line 82
    .line 83
    :goto_1
    filled-new-array {v3}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookPass;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPass;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string v4, "_secret=?"

    .line 96
    .line 97
    invoke-static {v1, v2, v4, v3}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->d2:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 101
    .line 102
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingPassAdapter;->f:Lcom/mycompany/app/main/MainListLoader;

    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    if-eqz v2, :cond_6

    .line 106
    .line 107
    iput-object v3, v2, Lcom/mycompany/app/main/MainListLoader;->c:Ljava/util/ArrayList;

    .line 108
    .line 109
    :cond_6
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingPassAdapter;->d:Ljava/util/List;

    .line 110
    .line 111
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 112
    .line 113
    .line 114
    :cond_7
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->d2:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingPassAdapter;->w()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_a

    .line 121
    .line 122
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 123
    .line 124
    if-eqz v1, :cond_8

    .line 125
    .line 126
    const/16 v2, 0x8

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->a2:Landroid/widget/ImageView;

    .line 132
    .line 133
    const/4 v2, 0x0

    .line 134
    if-eqz v1, :cond_9

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->b2:Lcom/mycompany/app/view/MyButtonText;

    .line 140
    .line 141
    if-eqz v1, :cond_a

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    iput-boolean v2, v0, Lcom/mycompany/app/setting/SettingPassList;->k2:Z

    .line 147
    .line 148
    :cond_a
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingPassList;->Q0()V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public final b(Lcom/mycompany/app/view/MyRoundImage;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList$11;->b:Lcom/mycompany/app/setting/SettingPassList;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->s2:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingPassList;->d2:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 10
    .line 11
    invoke-virtual {v4}, Lcom/mycompany/app/setting/SettingPassAdapter;->w()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ne v4, v3, :cond_2

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->d2:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 18
    .line 19
    iget-object v4, v1, Lcom/mycompany/app/setting/SettingPassAdapter;->d:Ljava/util/List;

    .line 20
    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    sub-int/2addr v4, v3

    .line 28
    if-gtz v4, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/setting/SettingPassAdapter;->d:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 41
    :cond_2
    :goto_1
    const v4, -0x70708

    .line 42
    .line 43
    .line 44
    if-eqz v1, :cond_6

    .line 45
    .line 46
    iput-object p1, v0, Lcom/mycompany/app/setting/SettingPassList;->m2:Lcom/mycompany/app/view/MyRoundImage;

    .line 47
    .line 48
    iget-object v5, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v5, v0, Lcom/mycompany/app/setting/SettingPassList;->n2:Ljava/lang/String;

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    new-instance p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    const/16 v6, 0x22

    .line 61
    .line 62
    iput v6, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 63
    .line 64
    const/16 v6, 0xb

    .line 65
    .line 66
    iput v6, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 67
    .line 68
    iput-object v5, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_4

    .line 75
    .line 76
    iget-object p1, v0, Lcom/mycompany/app/setting/SettingPassList;->m2:Lcom/mycompany/app/view/MyRoundImage;

    .line 77
    .line 78
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 79
    .line 80
    invoke-virtual {p1, v4, v0}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    invoke-static {p1}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_5

    .line 93
    .line 94
    iget-object p1, v0, Lcom/mycompany/app/setting/SettingPassList;->m2:Lcom/mycompany/app/view/MyRoundImage;

    .line 95
    .line 96
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 97
    .line 98
    .line 99
    iget-object p1, v0, Lcom/mycompany/app/setting/SettingPassList;->m2:Lcom/mycompany/app/view/MyRoundImage;

    .line 100
    .line 101
    invoke-virtual {p1, v4}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    new-instance v3, Lcom/mycompany/app/main/MainListLoader;

    .line 106
    .line 107
    iget-object v4, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 108
    .line 109
    new-instance v5, Lcom/mycompany/app/setting/SettingPassList$13;

    .line 110
    .line 111
    invoke-direct {v5, v0}, Lcom/mycompany/app/setting/SettingPassList$13;-><init>(Lcom/mycompany/app/setting/SettingPassList;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {v3, v4, v2, v5}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 115
    .line 116
    .line 117
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingPassList;->o2:Lcom/mycompany/app/main/MainListLoader;

    .line 118
    .line 119
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingPassList;->m2:Lcom/mycompany/app/view/MyRoundImage;

    .line 120
    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingPassList;->o2:Lcom/mycompany/app/main/MainListLoader;

    .line 129
    .line 130
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingPassList;->m2:Lcom/mycompany/app/view/MyRoundImage;

    .line 131
    .line 132
    invoke-virtual {v2, p1, v0}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 133
    .line 134
    .line 135
    :goto_2
    iget-object p1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassList;->d2:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingPassAdapter;->w()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_7

    .line 148
    .line 149
    return-void

    .line 150
    :cond_7
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 151
    .line 152
    invoke-virtual {p1, v4, v2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 153
    .line 154
    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    if-le v1, v3, :cond_8

    .line 164
    .line 165
    sget v1, Lnet/kaki87/soul2/testing/R$string;->items:I

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_8
    sget v1, Lnet/kaki87/soul2/testing/R$string;->item:I

    .line 169
    .line 170
    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method
