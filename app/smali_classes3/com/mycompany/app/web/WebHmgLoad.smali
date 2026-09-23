.class public Lcom/mycompany/app/web/WebHmgLoad;
.super Lcom/mycompany/app/web/WebLoadWrap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebHmgLoad$LocalWebViewClient;,
        Lcom/mycompany/app/web/WebHmgLoad$WebAppInterface;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

.field public c:Landroid/view/ViewGroup;

.field public d:Lcom/mycompany/app/web/WebNestView;

.field public e:Ljava/lang/String;

.field public f:I

.field public final g:Z

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Z

.field public k:Lcom/mycompany/app/web/WebHmgTask;

.field public l:Z

.field public m:Landroid/util/SparseIntArray;

.field public n:Z

.field public o:Z

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/ViewGroup;Ljava/lang/String;IZLcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->a:Landroid/content/Context;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/mycompany/app/web/WebHmgLoad;->c:Landroid/view/ViewGroup;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/mycompany/app/web/WebHmgLoad;->e:Ljava/lang/String;

    .line 20
    .line 21
    iput p4, p0, Lcom/mycompany/app/web/WebHmgLoad;->f:I

    .line 22
    .line 23
    iput-boolean p5, p0, Lcom/mycompany/app/web/WebHmgLoad;->g:Z

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebHmgLoad;->j:Z

    .line 27
    .line 28
    new-instance p3, Lcom/mycompany/app/web/WebNestView;

    .line 29
    .line 30
    invoke-direct {p3, p1}, Lcom/mycompany/app/web/WebNestView;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iput-object p3, p0, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 34
    .line 35
    invoke-virtual {p3, p2}, Lcom/mycompany/app/web/WebNestView;->setNoAutofill(Z)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 39
    .line 40
    const/4 p2, 0x4

    .line 41
    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebNestView;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->c:Landroid/view/ViewGroup;

    .line 45
    .line 46
    iget-object p2, p0, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 47
    .line 48
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    .line 49
    .line 50
    const/4 p4, -0x1

    .line 51
    invoke-direct {p3, p4, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 52
    .line 53
    .line 54
    const/4 p4, 0x0

    .line 55
    invoke-virtual {p1, p2, p4, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/mycompany/app/web/WebHmgTask;

    .line 59
    .line 60
    iget-object p2, p0, Lcom/mycompany/app/web/WebHmgLoad;->a:Landroid/content/Context;

    .line 61
    .line 62
    iget-object p3, p0, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 63
    .line 64
    new-instance p4, Lcom/mycompany/app/web/WebHmgLoad$7;

    .line 65
    .line 66
    invoke-direct {p4, p0}, Lcom/mycompany/app/web/WebHmgLoad$7;-><init>(Lcom/mycompany/app/web/WebHmgLoad;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, p2, p3, p4}, Lcom/mycompany/app/web/WebHmgTask;-><init>(Landroid/content/Context;Lcom/mycompany/app/web/WebNestView;Lcom/mycompany/app/web/WebHmgTask$HmgTaskListener;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->k:Lcom/mycompany/app/web/WebHmgTask;

    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->c:Landroid/view/ViewGroup;

    .line 75
    .line 76
    new-instance p2, Lcom/mycompany/app/web/WebHmgLoad$2;

    .line 77
    .line 78
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebHmgLoad$2;-><init>(Lcom/mycompany/app/web/WebHmgLoad;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Lcom/mycompany/app/web/WebHmgLoad;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->D5(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->l:Z

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->l:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebHmgLoad$3;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebHmgLoad$3;-><init>(Lcom/mycompany/app/web/WebHmgLoad;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/mycompany/app/web/WebNestView;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->l:Z

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->l:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/web/WebHmgLoad$4;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebHmgLoad$4;-><init>(Lcom/mycompany/app/web/WebHmgLoad;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/mycompany/app/web/WebNestView;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static f(Lcom/mycompany/app/web/WebHmgLoad;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->j:Z

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/mycompany/app/web/WebHmgLoad;->h:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->k:Lcom/mycompany/app/web/WebHmgTask;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebHmgTask;->g()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/web/WebHmgLoad;->k:Lcom/mycompany/app/web/WebHmgTask;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/web/WebHmgLoad;->a:Landroid/content/Context;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/web/WebHmgLoad;->e:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/web/WebHmgLoad;->h:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 27
    .line 28
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/web/WebHmgLoad;->c:Landroid/view/ViewGroup;

    .line 29
    .line 30
    return-void
.end method

.method public final c(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->j:Z

    .line 8
    .line 9
    if-nez v0, :cond_c

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->k:Lcom/mycompany/app/web/WebHmgTask;

    .line 12
    .line 13
    if-eqz v0, :cond_c

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->a:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Lcom/mycompany/app/data/DataUrl;->a:Ljava/util/List;

    .line 28
    .line 29
    if-eqz v0, :cond_b

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/web/WebHmgLoad;->a:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v1, v1, Lcom/mycompany/app/data/DataUrl;->b:Ljava/util/List;

    .line 46
    .line 47
    if-eqz v1, :cond_a

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eq v2, v3, :cond_4

    .line 65
    .line 66
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 67
    .line 68
    if-eqz p1, :cond_c

    .line 69
    .line 70
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_4
    if-ltz p1, :cond_9

    .line 75
    .line 76
    if-lt p1, v2, :cond_5

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebHmgLoad;->g(I)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_6

    .line 84
    .line 85
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 86
    .line 87
    if-eqz p1, :cond_c

    .line 88
    .line 89
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v3, ".webp"

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_7

    .line 124
    .line 125
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 126
    .line 127
    if-eqz p1, :cond_c

    .line 128
    .line 129
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_7
    iput-object v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->e:Ljava/lang/String;

    .line 134
    .line 135
    iput p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->f:I

    .line 136
    .line 137
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 138
    .line 139
    if-nez p1, :cond_8

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_8
    new-instance v0, Lcom/mycompany/app/web/WebHmgLoad$11;

    .line 143
    .line 144
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebHmgLoad$11;-><init>(Lcom/mycompany/app/web/WebHmgLoad;)V

    .line 145
    .line 146
    .line 147
    const-wide/16 v1, 0xc8

    .line 148
    .line 149
    invoke-virtual {p1, v0, v1, v2}, Lcom/mycompany/app/web/WebNestView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 154
    .line 155
    if-eqz p1, :cond_c

    .line 156
    .line 157
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 162
    .line 163
    if-eqz p1, :cond_c

    .line 164
    .line 165
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 170
    .line 171
    if-eqz p1, :cond_c

    .line 172
    .line 173
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 174
    .line 175
    .line 176
    :cond_c
    :goto_3
    return-void
.end method

.method public final d(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->k:Lcom/mycompany/app/web/WebHmgTask;

    .line 6
    .line 7
    if-eqz v0, :cond_10

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->f:I

    .line 16
    .line 17
    if-ne v0, p1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_1
    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 28
    .line 29
    if-eqz p1, :cond_10

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->a:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v0, v0, Lcom/mycompany/app/data/DataUrl;->a:Ljava/util/List;

    .line 42
    .line 43
    if-eqz v0, :cond_f

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/web/WebHmgLoad;->a:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v1, v1, Lcom/mycompany/app/data/DataUrl;->b:Ljava/util/List;

    .line 60
    .line 61
    if-eqz v1, :cond_e

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eq v1, v2, :cond_5

    .line 80
    .line 81
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 82
    .line 83
    if-eqz p1, :cond_10

    .line 84
    .line 85
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_5
    if-ltz p1, :cond_d

    .line 90
    .line 91
    if-lt p1, v1, :cond_6

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_7

    .line 105
    .line 106
    iget-object p2, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 107
    .line 108
    if-eqz p2, :cond_10

    .line 109
    .line 110
    invoke-interface {p2, p1, v0}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->b(ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_7
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebHmgLoad;->g(I)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 121
    .line 122
    if-eqz p1, :cond_10

    .line 123
    .line 124
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_8
    iget v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->f:I

    .line 129
    .line 130
    if-ne v0, p1, :cond_9

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_9
    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->n:Z

    .line 135
    .line 136
    iput-object p2, p0, Lcom/mycompany/app/web/WebHmgLoad;->e:Ljava/lang/String;

    .line 137
    .line 138
    iput p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->f:I

    .line 139
    .line 140
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 141
    .line 142
    iget-boolean p2, p1, Lcom/mycompany/app/web/WebNestView;->m:Z

    .line 143
    .line 144
    if-eqz p2, :cond_a

    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 147
    .line 148
    .line 149
    :cond_a
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->k:Lcom/mycompany/app/web/WebHmgTask;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebHmgTask;->b()V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 155
    .line 156
    if-nez p1, :cond_b

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_b
    new-instance v0, Lcom/mycompany/app/web/WebHmgLoad$10;

    .line 160
    .line 161
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebHmgLoad$10;-><init>(Lcom/mycompany/app/web/WebHmgLoad;)V

    .line 162
    .line 163
    .line 164
    if-eqz p2, :cond_c

    .line 165
    .line 166
    const-wide/16 v1, 0x320

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_c
    const-wide/16 v1, 0xc8

    .line 170
    .line 171
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/mycompany/app/web/WebNestView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_d
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 176
    .line 177
    if-eqz p1, :cond_10

    .line 178
    .line 179
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_e
    :goto_2
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 184
    .line 185
    if-eqz p1, :cond_10

    .line 186
    .line 187
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_f
    :goto_3
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 192
    .line 193
    if-eqz p1, :cond_10

    .line 194
    .line 195
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 196
    .line 197
    .line 198
    :cond_10
    :goto_4
    return-void
.end method

.method public final g(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->m:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/util/SparseIntArray;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->m:Landroid/util/SparseIntArray;

    .line 13
    .line 14
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    const/4 v3, -0x1

    .line 19
    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-ne v0, v3, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->m:Landroid/util/SparseIntArray;

    .line 26
    .line 27
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    const/16 v3, 0xa

    .line 32
    .line 33
    if-ge v0, v3, :cond_2

    .line 34
    .line 35
    add-int/2addr v0, v2

    .line 36
    iget-object v2, p0, Lcom/mycompany/app/web/WebHmgLoad;->m:Landroid/util/SparseIntArray;

    .line 37
    .line 38
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    .line 40
    .line 41
    return v1

    .line 42
    :cond_2
    return v2
.end method

.method public final h(Ljava/util/List;Ljava/util/List;I)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_a

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebHmgLoad;->j:Z

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const-wide/16 v2, 0xc8

    .line 16
    .line 17
    if-eqz p1, :cond_1a

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    goto/16 :goto_9

    .line 26
    .line 27
    :cond_2
    iget v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->f:I

    .line 28
    .line 29
    if-gez v0, :cond_3

    .line 30
    .line 31
    iput p3, p0, Lcom/mycompany/app/web/WebHmgLoad;->f:I

    .line 32
    .line 33
    :cond_3
    iget v0, p0, Lcom/mycompany/app/web/WebHmgLoad;->f:I

    .line 34
    .line 35
    if-eqz p2, :cond_19

    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_4

    .line 42
    .line 43
    goto/16 :goto_8

    .line 44
    .line 45
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eq v4, v5, :cond_5

    .line 54
    .line 55
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebHmgLoad;->j:Z

    .line 56
    .line 57
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 58
    .line 59
    if-eqz p1, :cond_1c

    .line 60
    .line 61
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_5
    if-ltz p3, :cond_7

    .line 66
    .line 67
    if-ge p3, v4, :cond_7

    .line 68
    .line 69
    iput p3, p0, Lcom/mycompany/app/web/WebHmgLoad;->f:I

    .line 70
    .line 71
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_6

    .line 82
    .line 83
    iget-object v5, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 84
    .line 85
    if-eqz v5, :cond_6

    .line 86
    .line 87
    invoke-interface {v5, p3, v0}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->b(ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_6
    move v0, p3

    .line 91
    :cond_7
    add-int/lit8 p3, p3, 0x1

    .line 92
    .line 93
    if-ltz p3, :cond_8

    .line 94
    .line 95
    if-ge p3, v4, :cond_8

    .line 96
    .line 97
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    check-cast v5, Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_8

    .line 108
    .line 109
    iget-object v6, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 110
    .line 111
    if-eqz v6, :cond_8

    .line 112
    .line 113
    invoke-interface {v6, p3, v5}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->b(ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    move v5, v1

    .line 121
    :cond_9
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-eqz v6, :cond_a

    .line 126
    .line 127
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    check-cast v6, Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v6}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-eqz v6, :cond_9

    .line 138
    .line 139
    add-int/lit8 v5, v5, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_a
    if-ne v5, v4, :cond_b

    .line 143
    .line 144
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebHmgLoad;->j:Z

    .line 145
    .line 146
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 147
    .line 148
    if-eqz p1, :cond_1c

    .line 149
    .line 150
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->c()V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 155
    .line 156
    .line 157
    move-result p3

    .line 158
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    const/4 v6, -0x1

    .line 163
    if-eq p3, v5, :cond_d

    .line 164
    .line 165
    :cond_c
    :goto_1
    move v8, v6

    .line 166
    goto :goto_6

    .line 167
    :cond_d
    if-ltz v0, :cond_f

    .line 168
    .line 169
    if-lt v0, p3, :cond_e

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_e
    move v5, v0

    .line 173
    goto :goto_3

    .line 174
    :cond_f
    :goto_2
    move v5, v1

    .line 175
    :goto_3
    move v7, v1

    .line 176
    move v8, v5

    .line 177
    :cond_10
    :goto_4
    if-ge v7, p3, :cond_c

    .line 178
    .line 179
    add-int/lit8 v7, v7, 0x1

    .line 180
    .line 181
    iget-boolean v9, p0, Lcom/mycompany/app/web/WebHmgLoad;->g:Z

    .line 182
    .line 183
    if-eqz v9, :cond_11

    .line 184
    .line 185
    add-int/lit8 v8, v8, 0x1

    .line 186
    .line 187
    rem-int/2addr v8, p3

    .line 188
    goto :goto_5

    .line 189
    :cond_11
    add-int/lit8 v8, v8, -0x1

    .line 190
    .line 191
    add-int/2addr v8, p3

    .line 192
    rem-int/2addr v8, p3

    .line 193
    :goto_5
    if-eq v8, v5, :cond_c

    .line 194
    .line 195
    if-ltz v8, :cond_c

    .line 196
    .line 197
    if-lt v8, p3, :cond_12

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_12
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    check-cast v9, Ljava/lang/String;

    .line 205
    .line 206
    invoke-static {v9}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    if-nez v9, :cond_13

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_13
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    check-cast v9, Ljava/lang/String;

    .line 218
    .line 219
    invoke-static {v9}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    if-nez v9, :cond_10

    .line 224
    .line 225
    :goto_6
    if-ne v8, v6, :cond_14

    .line 226
    .line 227
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebHmgLoad;->j:Z

    .line 228
    .line 229
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 230
    .line 231
    if-eqz p1, :cond_1c

    .line 232
    .line 233
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_14
    if-ltz v8, :cond_15

    .line 238
    .line 239
    if-ge v8, v4, :cond_15

    .line 240
    .line 241
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p3

    .line 245
    check-cast p3, Ljava/lang/String;

    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_15
    const/4 p3, 0x0

    .line 249
    :goto_7
    invoke-static {p3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-eqz v1, :cond_16

    .line 254
    .line 255
    iput-object p3, p0, Lcom/mycompany/app/web/WebHmgLoad;->e:Ljava/lang/String;

    .line 256
    .line 257
    iput v8, p0, Lcom/mycompany/app/web/WebHmgLoad;->f:I

    .line 258
    .line 259
    move v0, v8

    .line 260
    :cond_16
    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebHmgLoad;->g(I)Z

    .line 261
    .line 262
    .line 263
    move-result p3

    .line 264
    if-eqz p3, :cond_17

    .line 265
    .line 266
    new-instance p3, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string v1, "https://"

    .line 269
    .line 270
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v1, ".webp"

    .line 277
    .line 278
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p3

    .line 285
    invoke-interface {p1, v0, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, p1, p2, v0}, Lcom/mycompany/app/web/WebHmgLoad;->h(Ljava/util/List;Ljava/util/List;I)V

    .line 289
    .line 290
    .line 291
    return-void

    .line 292
    :cond_17
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 293
    .line 294
    if-nez p1, :cond_18

    .line 295
    .line 296
    goto :goto_a

    .line 297
    :cond_18
    new-instance p2, Lcom/mycompany/app/web/WebHmgLoad$9;

    .line 298
    .line 299
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebHmgLoad$9;-><init>(Lcom/mycompany/app/web/WebHmgLoad;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1, p2, v2, v3}, Lcom/mycompany/app/web/WebNestView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :cond_19
    :goto_8
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebHmgLoad;->j:Z

    .line 307
    .line 308
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 309
    .line 310
    if-eqz p1, :cond_1c

    .line 311
    .line 312
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    :cond_1a
    :goto_9
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->n:Z

    .line 317
    .line 318
    if-eqz p1, :cond_1b

    .line 319
    .line 320
    goto :goto_a

    .line 321
    :cond_1b
    iget-object p1, p0, Lcom/mycompany/app/web/WebHmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 322
    .line 323
    if-nez p1, :cond_1d

    .line 324
    .line 325
    :cond_1c
    :goto_a
    return-void

    .line 326
    :cond_1d
    new-instance p2, Lcom/mycompany/app/web/WebHmgLoad$8;

    .line 327
    .line 328
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebHmgLoad$8;-><init>(Lcom/mycompany/app/web/WebHmgLoad;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1, p2, v2, v3}, Lcom/mycompany/app/web/WebNestView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 332
    .line 333
    .line 334
    return-void
.end method
