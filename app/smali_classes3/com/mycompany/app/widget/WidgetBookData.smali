.class public Lcom/mycompany/app/widget/WidgetBookData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lcom/mycompany/app/widget/WidgetBookData;


# instance fields
.field public a:Landroid/util/SparseArray;

.field public b:Landroid/util/SparseArray;


# direct methods
.method public static b()Lcom/mycompany/app/widget/WidgetBookData;
    .locals 2

    .line 1
    sget-object v0, Lcom/mycompany/app/widget/WidgetBookData;->c:Lcom/mycompany/app/widget/WidgetBookData;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/mycompany/app/widget/WidgetBookData;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mycompany/app/widget/WidgetBookData;->c:Lcom/mycompany/app/widget/WidgetBookData;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/widget/WidgetBookData;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/mycompany/app/widget/WidgetBookData;->c:Lcom/mycompany/app/widget/WidgetBookData;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/mycompany/app/widget/WidgetBookData;->c:Lcom/mycompany/app/widget/WidgetBookData;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetBookData;->a:Landroid/util/SparseArray;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetBookData;->a:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_2
    :goto_0
    sget-object v0, Lcom/mycompany/app/pref/PrefMain;->I:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_3
    const-string v1, ","

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_7

    .line 40
    .line 41
    array-length v1, v0

    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_4
    array-length v1, v0

    .line 46
    const/4 v2, 0x0

    .line 47
    move v3, v2

    .line 48
    :goto_1
    if-ge v3, v1, :cond_7

    .line 49
    .line 50
    aget-object v4, v0, v3

    .line 51
    .line 52
    const-string v5, "#"

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-eqz v4, :cond_6

    .line 59
    .line 60
    array-length v5, v4

    .line 61
    const/4 v6, 0x2

    .line 62
    if-eq v5, v6, :cond_5

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_5
    aget-object v5, v4, v2

    .line 66
    .line 67
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->H6(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-ne p1, v5, :cond_6

    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    aget-object p1, v4, p1

    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catch_0
    :cond_7
    :goto_3
    const/4 p1, 0x0

    .line 81
    return-object p1
.end method

.method public final c(Landroid/content/Context;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetBookData;->a:Landroid/util/SparseArray;

    .line 2
    .line 3
    const-string v1, "mWidgetBook"

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const-string v3, ""

    .line 7
    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_4

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetBookData;->a:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    move v6, v4

    .line 26
    move-object v7, v5

    .line 27
    :goto_0
    if-ge v6, v0, :cond_3

    .line 28
    .line 29
    :try_start_0
    iget-object v8, p0, Lcom/mycompany/app/widget/WidgetBookData;->a:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 32
    .line 33
    .line 34
    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :try_start_1
    iget-object v9, p0, Lcom/mycompany/app/widget/WidgetBookData;->a:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    check-cast v9, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move v8, v4

    .line 45
    :catch_1
    move-object v9, v5

    .line 46
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    if-eqz v10, :cond_1

    .line 51
    .line 52
    const-string v9, "/"

    .line 53
    .line 54
    :cond_1
    if-nez v7, :cond_2

    .line 55
    .line 56
    new-instance v7, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const-string v10, ","

    .line 63
    .line 64
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v8, "#"

    .line 71
    .line 72
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    add-int/lit8 v6, v6, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    if-nez v7, :cond_4

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    :goto_3
    sget-object v0, Lcom/mycompany/app/pref/PrefMain;->I:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_5
    sput-object v3, Lcom/mycompany/app/pref/PrefMain;->I:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v2, p1, v1, v3}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_6
    :goto_4
    sget-object v0, Lcom/mycompany/app/pref/PrefMain;->I:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    :goto_5
    return-void

    .line 112
    :cond_7
    sput-object v3, Lcom/mycompany/app/pref/PrefMain;->I:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v2, p1, v1, v3}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method
