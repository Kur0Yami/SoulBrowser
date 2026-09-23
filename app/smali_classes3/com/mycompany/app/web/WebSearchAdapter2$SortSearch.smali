.class Lcom/mycompany/app/web/WebSearchAdapter2$SortSearch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebSearchAdapter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortSearch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Z

.field public final f:I


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebSearchAdapter2$SortSearch;->c:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x1

    .line 11
    :goto_0
    iput p1, p0, Lcom/mycompany/app/web/WebSearchAdapter2$SortSearch;->f:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 2
    .line 3
    check-cast p2, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    iget v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2$SortSearch;->f:I

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    if-nez p2, :cond_2

    .line 17
    .line 18
    neg-int p1, v0

    .line 19
    return p1

    .line 20
    :cond_2
    iget v1, p1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->c:I

    .line 21
    .line 22
    iget v2, p2, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->c:I

    .line 23
    .line 24
    if-ge v1, v2, :cond_3

    .line 25
    .line 26
    neg-int p1, v0

    .line 27
    return p1

    .line 28
    :cond_3
    if-le v1, v2, :cond_4

    .line 29
    .line 30
    :goto_0
    return v0

    .line 31
    :cond_4
    iget-object p1, p1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->h:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p2, p2, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->h:Ljava/lang/String;

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2$SortSearch;->c:Z

    .line 36
    .line 37
    invoke-static {p1, p2, v0}, Lcom/mycompany/app/main/MainUtil;->n(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method
