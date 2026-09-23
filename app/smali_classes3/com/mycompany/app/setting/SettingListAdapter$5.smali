.class Lcom/mycompany/app/setting/SettingListAdapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingListAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingListAdapter$5;->a:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/mycompany/app/setting/SettingListAdapter;->y(Landroid/view/View;)Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingListAdapter$5;->a:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 13
    .line 14
    invoke-virtual {v0, p3}, Lcom/mycompany/app/setting/SettingListAdapter;->w(I)Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    if-nez p3, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object v1, p3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->r:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_3

    .line 37
    .line 38
    iget-object v2, p2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v4, p1, 0x1

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget-boolean v1, p3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->q:Z

    .line 62
    .line 63
    const-string v2, ""

    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    iget-object v1, p2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget v2, p3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->o:I

    .line 75
    .line 76
    invoke-static {p1, v2}, Lcom/mycompany/app/dialog/DialogSetTts;->B(II)F

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    iget-object v1, p2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingListAdapter;->h:Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    iget p3, p3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 113
    .line 114
    const/4 v1, 0x0

    .line 115
    invoke-interface {v0, p2, p3, v1, p1}, Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;->a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V

    .line 116
    .line 117
    .line 118
    :cond_5
    :goto_1
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/mycompany/app/setting/SettingListAdapter;->y(Landroid/view/View;)Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingListAdapter$5;->a:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->w(I)Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->r:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_3

    .line 37
    .line 38
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v6, p1, 0x1

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget-boolean v3, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->q:Z

    .line 62
    .line 63
    const-string v4, ""

    .line 64
    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget v4, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->o:I

    .line 75
    .line 76
    invoke-static {p1, v4}, Lcom/mycompany/app/dialog/DialogSetTts;->B(II)F

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    iget-object v2, v2, Lcom/mycompany/app/setting/SettingListAdapter;->h:Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;

    .line 109
    .line 110
    if-eqz v2, :cond_5

    .line 111
    .line 112
    iget v1, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    invoke-interface {v2, v0, v1, v3, p1}, Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;->a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V

    .line 116
    .line 117
    .line 118
    :cond_5
    :goto_1
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/mycompany/app/setting/SettingListAdapter;->y(Landroid/view/View;)Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingListAdapter$5;->a:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->w(I)Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->r:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_3

    .line 37
    .line 38
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v6, p1, 0x1

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget-boolean v3, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->q:Z

    .line 62
    .line 63
    const-string v4, ""

    .line 64
    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget v4, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->o:I

    .line 75
    .line 76
    invoke-static {p1, v4}, Lcom/mycompany/app/dialog/DialogSetTts;->B(II)F

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    iget-object v2, v2, Lcom/mycompany/app/setting/SettingListAdapter;->h:Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;

    .line 109
    .line 110
    if-eqz v2, :cond_5

    .line 111
    .line 112
    iget v1, v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    invoke-interface {v2, v0, v1, v3, p1}, Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;->a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V

    .line 116
    .line 117
    .line 118
    :cond_5
    :goto_1
    return-void
.end method
