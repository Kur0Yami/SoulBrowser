.class public Lcom/mycompany/app/expand/ExpandListView;
.super Landroid/widget/ExpandableListView;
.source "SourceFile"


# instance fields
.field public c:Lcom/mycompany/app/expand/ExpandListAdapter;


# virtual methods
.method public final a(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/expand/ExpandListView;->c:Lcom/mycompany/app/expand/ExpandListAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, -0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    if-eq v3, v2, :cond_1

    .line 33
    .line 34
    if-eq v1, p1, :cond_2

    .line 35
    .line 36
    :cond_1
    move v3, v4

    .line 37
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/expand/ExpandListView;->c:Lcom/mycompany/app/expand/ExpandListAdapter;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    sub-int/2addr v2, v0

    .line 44
    invoke-virtual {v1, p1}, Lcom/mycompany/app/expand/ExpandListAdapter;->b(I)Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x1

    .line 49
    iput-boolean v1, v0, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->a:Z

    .line 50
    .line 51
    iput-boolean v4, v0, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->b:Z

    .line 52
    .line 53
    iput v3, v0, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->c:I

    .line 54
    .line 55
    iput v2, v0, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->d:I

    .line 56
    .line 57
    iput p2, v0, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->f:I

    .line 58
    .line 59
    iget-object p2, p0, Lcom/mycompany/app/expand/ExpandListView;->c:Lcom/mycompany/app/expand/ExpandListAdapter;

    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final b(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/expand/ExpandListView;->c:Lcom/mycompany/app/expand/ExpandListAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sub-int v2, v0, v2

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ge v2, v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-lt v2, v3, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/expand/ExpandListView;->c:Lcom/mycompany/app/expand/ExpandListAdapter;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/mycompany/app/expand/ExpandListAdapter;->b(I)Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput v1, v0, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->e:I

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/expand/ExpandListView;->c:Lcom/mycompany/app/expand/ExpandListAdapter;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    sub-int/2addr v2, v0

    .line 64
    invoke-virtual {v1, p1}, Lcom/mycompany/app/expand/ExpandListAdapter;->b(I)Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v1, 0x1

    .line 69
    iput-boolean v1, v0, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->a:Z

    .line 70
    .line 71
    iput-boolean v1, v0, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->b:Z

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    iput v1, v0, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->c:I

    .line 75
    .line 76
    iput v2, v0, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->d:I

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lcom/mycompany/app/expand/ExpandListAdapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lcom/mycompany/app/expand/ExpandListAdapter;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/mycompany/app/expand/ExpandListView;->c:Lcom/mycompany/app/expand/ExpandListAdapter;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, " must implement AnimatedExpandableListAdapter"

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method
