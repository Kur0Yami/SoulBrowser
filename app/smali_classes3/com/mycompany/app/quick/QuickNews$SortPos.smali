.class public Lcom/mycompany/app/quick/QuickNews$SortPos;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/quick/QuickNews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortPos"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/mycompany/app/quick/QuickAdapter$QuickItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 2
    .line 3
    check-cast p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    if-nez p2, :cond_2

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_2
    iget p1, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->m:I

    .line 17
    .line 18
    if-gez p1, :cond_3

    .line 19
    .line 20
    iget v0, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->m:I

    .line 21
    .line 22
    if-gez v0, :cond_3

    .line 23
    .line 24
    :goto_0
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    :cond_3
    if-gez p1, :cond_4

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_4
    iget p2, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->m:I

    .line 30
    .line 31
    if-gez p2, :cond_5

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_5
    if-ge p1, p2, :cond_6

    .line 35
    .line 36
    :goto_1
    const/4 p1, -0x1

    .line 37
    return p1

    .line 38
    :cond_6
    :goto_2
    const/4 p1, 0x1

    .line 39
    return p1
.end method
