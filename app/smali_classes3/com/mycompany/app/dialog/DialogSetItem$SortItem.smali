.class Lcom/mycompany/app/dialog/DialogSetItem$SortItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogSetItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 2
    .line 3
    check-cast p2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

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
    iget-object p1, p1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->g:Ljava/lang/String;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->g:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1, p2, v0}, Lcom/mycompany/app/main/MainUtil;->n(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method
