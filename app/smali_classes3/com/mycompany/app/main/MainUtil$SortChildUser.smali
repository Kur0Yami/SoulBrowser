.class public Lcom/mycompany/app/main/MainUtil$SortChildUser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/MainUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortChildUser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/mycompany/app/main/MainItem$ChildItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 2
    .line 3
    check-cast p2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_1
    if-nez p2, :cond_2

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    return p1

    .line 19
    :cond_2
    iget-wide v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->p:J

    .line 20
    .line 21
    iget-wide v3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->p:J

    .line 22
    .line 23
    invoke-static {v1, v2, v3, v4, v0}, Lcom/mycompany/app/main/MainUtil;->o(JJZ)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    return v1

    .line 30
    :cond_3
    iget-wide v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 31
    .line 32
    iget-wide v3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 33
    .line 34
    invoke-static {v1, v2, v3, v4, v0}, Lcom/mycompany/app/main/MainUtil;->o(JJZ)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    return v1

    .line 41
    :cond_4
    iget-object v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v1, v2, v0}, Lcom/mycompany/app/main/MainUtil;->m(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    return v1

    .line 52
    :cond_5
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 53
    .line 54
    iget-object p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p1, p2, v0}, Lcom/mycompany/app/main/MainUtil;->n(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    return p1
.end method
