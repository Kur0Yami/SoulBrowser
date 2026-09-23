.class Lcom/mycompany/app/dialog/DialogListBook$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainListView$DcChangeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogListBook;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogListBook;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogListBook$4;->a:Lcom/mycompany/app/dialog/DialogListBook;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListBook$4;->a:Lcom/mycompany/app/dialog/DialogListBook;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogListBook;->B:Lcom/mycompany/app/dialog/DialogListBook$ListDcListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/mycompany/app/dialog/DialogListBook$ListDcListener;->a(ILcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final b(Lcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 6

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogListBook;->O:I

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListBook$4;->a:Lcom/mycompany/app/dialog/DialogListBook;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListBook;->B:Lcom/mycompany/app/dialog/DialogListBook$ListDcListener;

    .line 15
    .line 16
    iget-object v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 19
    .line 20
    invoke-interface {v1, v2, v3}, Lcom/mycompany/app/dialog/DialogListBook$ListDcListener;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    iput-object v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 31
    .line 32
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListBook;->G:Ljava/util/ArrayList;

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogListBook;->G:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogListBook;->G:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListBook;->G:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const/4 v3, 0x0

    .line 66
    :cond_4
    :goto_0
    if-ge v3, v2, :cond_6

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    check-cast v4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 75
    .line 76
    if-nez v4, :cond_5

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    iget-object v5, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v4, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogListBook;->G:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_6
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogListBook;->G:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 8

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogListBook;->O:I

    .line 2
    .line 3
    if-eqz p1, :cond_a

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListBook$4;->a:Lcom/mycompany/app/dialog/DialogListBook;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListBook;->F:Ljava/util/ArrayList;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogListBook;->F:Ljava/util/ArrayList;

    .line 24
    .line 25
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListBook;->F:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListBook;->G:Ljava/util/ArrayList;

    .line 31
    .line 32
    if-eqz v1, :cond_a

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_9

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 56
    .line 57
    if-nez v2, :cond_4

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_5

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    const/4 v4, 0x0

    .line 74
    :cond_6
    :goto_1
    if-ge v4, v3, :cond_8

    .line 75
    .line 76
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    check-cast v5, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 83
    .line 84
    if-nez v5, :cond_7

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_7
    iget-object v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v7, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_6

    .line 96
    .line 97
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    :cond_9
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogListBook;->G:Ljava/util/ArrayList;

    .line 107
    .line 108
    :cond_a
    :goto_2
    return-void
.end method
