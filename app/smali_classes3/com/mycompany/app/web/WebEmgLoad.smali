.class public Lcom/mycompany/app/web/WebEmgLoad;
.super Lcom/mycompany/app/web/WebLoadWrap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebEmgLoad$LocalWebViewClient;,
        Lcom/mycompany/app/web/WebEmgLoad$WebAppInterface;
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

.field public k:Lcom/mycompany/app/web/WebEmgTask;

.field public l:Z

.field public m:Z

.field public n:Ljava/lang/String;


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
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgLoad;->a:Landroid/content/Context;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/mycompany/app/web/WebEmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/mycompany/app/web/WebEmgLoad;->c:Landroid/view/ViewGroup;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/mycompany/app/web/WebEmgLoad;->e:Ljava/lang/String;

    .line 20
    .line 21
    iput p4, p0, Lcom/mycompany/app/web/WebEmgLoad;->f:I

    .line 22
    .line 23
    iput-boolean p5, p0, Lcom/mycompany/app/web/WebEmgLoad;->g:Z

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebEmgLoad;->j:Z

    .line 27
    .line 28
    new-instance p3, Lcom/mycompany/app/web/WebNestView;

    .line 29
    .line 30
    invoke-direct {p3, p1}, Lcom/mycompany/app/web/WebNestView;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iput-object p3, p0, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 34
    .line 35
    invoke-virtual {p3, p2}, Lcom/mycompany/app/web/WebNestView;->setNoAutofill(Z)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 39
    .line 40
    const/4 p2, 0x4

    .line 41
    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebNestView;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad;->c:Landroid/view/ViewGroup;

    .line 45
    .line 46
    iget-object p2, p0, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

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
    new-instance p1, Lcom/mycompany/app/web/WebEmgTask;

    .line 59
    .line 60
    iget-object p2, p0, Lcom/mycompany/app/web/WebEmgLoad;->a:Landroid/content/Context;

    .line 61
    .line 62
    iget-object p3, p0, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 63
    .line 64
    new-instance p4, Lcom/mycompany/app/web/WebEmgLoad$7;

    .line 65
    .line 66
    invoke-direct {p4, p0}, Lcom/mycompany/app/web/WebEmgLoad$7;-><init>(Lcom/mycompany/app/web/WebEmgLoad;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, p2, p3, p4}, Lcom/mycompany/app/web/WebEmgTask;-><init>(Landroid/content/Context;Lcom/mycompany/app/web/WebNestView;Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad;->k:Lcom/mycompany/app/web/WebEmgTask;

    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad;->c:Landroid/view/ViewGroup;

    .line 75
    .line 76
    new-instance p2, Lcom/mycompany/app/web/WebEmgLoad$2;

    .line 77
    .line 78
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebEmgLoad$2;-><init>(Lcom/mycompany/app/web/WebEmgLoad;)V

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

.method public static e(Lcom/mycompany/app/web/WebEmgLoad;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

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
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebEmgLoad;->l:Z

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
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebEmgLoad;->l:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebEmgLoad$3;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebEmgLoad$3;-><init>(Lcom/mycompany/app/web/WebEmgLoad;)V

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
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebEmgLoad;->l:Z

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
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebEmgLoad;->l:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/web/WebEmgLoad$4;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebEmgLoad$4;-><init>(Lcom/mycompany/app/web/WebEmgLoad;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/mycompany/app/web/WebNestView;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static f(Lcom/mycompany/app/web/WebEmgLoad;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebEmgLoad;->j:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/mycompany/app/web/WebEmgLoad;->h:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgLoad;->k:Lcom/mycompany/app/web/WebEmgTask;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebEmgTask;->d()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/web/WebEmgLoad;->k:Lcom/mycompany/app/web/WebEmgTask;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/web/WebEmgLoad;->a:Landroid/content/Context;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/mycompany/app/web/WebEmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/web/WebEmgLoad;->e:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/web/WebEmgLoad;->h:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 27
    .line 28
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/web/WebEmgLoad;->c:Landroid/view/ViewGroup;

    .line 29
    .line 30
    return-void
.end method

.method public final c(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebEmgLoad;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_a

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgLoad;->k:Lcom/mycompany/app/web/WebEmgTask;

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgLoad;->a:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/mycompany/app/data/DataUrl;->a:Ljava/util/List;

    .line 22
    .line 23
    if-eqz v0, :cond_9

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgLoad;->a:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v1, v1, Lcom/mycompany/app/data/DataUrl;->b:Ljava/util/List;

    .line 40
    .line 41
    if-eqz v1, :cond_8

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eq v2, v3, :cond_3

    .line 59
    .line 60
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 61
    .line 62
    if-eqz p1, :cond_a

    .line 63
    .line 64
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    if-ltz p1, :cond_7

    .line 69
    .line 70
    if-lt p1, v2, :cond_4

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v3, ".jpg"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->o5(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_5

    .line 104
    .line 105
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 106
    .line 107
    if-eqz p1, :cond_a

    .line 108
    .line 109
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_5
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgLoad;->e:Ljava/lang/String;

    .line 114
    .line 115
    iput p1, p0, Lcom/mycompany/app/web/WebEmgLoad;->f:I

    .line 116
    .line 117
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 118
    .line 119
    if-nez p1, :cond_6

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_6
    new-instance v0, Lcom/mycompany/app/web/WebEmgLoad$10;

    .line 123
    .line 124
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebEmgLoad$10;-><init>(Lcom/mycompany/app/web/WebEmgLoad;)V

    .line 125
    .line 126
    .line 127
    const-wide/16 v1, 0xc8

    .line 128
    .line 129
    invoke-virtual {p1, v0, v1, v2}, Lcom/mycompany/app/web/WebNestView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 134
    .line 135
    if-eqz p1, :cond_a

    .line 136
    .line 137
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 142
    .line 143
    if-eqz p1, :cond_a

    .line 144
    .line 145
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 150
    .line 151
    if-eqz p1, :cond_a

    .line 152
    .line 153
    invoke-interface {p1}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 154
    .line 155
    .line 156
    :cond_a
    :goto_3
    return-void
.end method
