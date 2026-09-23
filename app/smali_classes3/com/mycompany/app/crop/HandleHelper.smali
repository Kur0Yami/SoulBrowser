.class abstract Lcom/mycompany/app/crop/HandleHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/mycompany/app/crop/Edge;

.field public final b:Lcom/mycompany/app/crop/Edge;

.field public final c:Lcom/mycompany/app/crop/EdgePair;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/crop/Edge;Lcom/mycompany/app/crop/Edge;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/crop/HandleHelper;->a:Lcom/mycompany/app/crop/Edge;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/crop/HandleHelper;->b:Lcom/mycompany/app/crop/Edge;

    .line 7
    .line 8
    new-instance v0, Lcom/mycompany/app/crop/EdgePair;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, v0, Lcom/mycompany/app/crop/EdgePair;->a:Lcom/mycompany/app/crop/Edge;

    .line 14
    .line 15
    iput-object p2, v0, Lcom/mycompany/app/crop/EdgePair;->b:Lcom/mycompany/app/crop/Edge;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/mycompany/app/crop/HandleHelper;->c:Lcom/mycompany/app/crop/EdgePair;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public abstract a(FFFFLandroid/graphics/RectF;)V
.end method

.method public b(FFLandroid/graphics/RectF;F)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/crop/HandleHelper;->c:Lcom/mycompany/app/crop/EdgePair;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/crop/EdgePair;->a:Lcom/mycompany/app/crop/Edge;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/crop/EdgePair;->b:Lcom/mycompany/app/crop/Edge;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/high16 v5, 0x3f800000    # 1.0f

    .line 10
    .line 11
    move v2, p1

    .line 12
    move v3, p2

    .line 13
    move-object v6, p3

    .line 14
    move v4, p4

    .line 15
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/crop/Edge;->b(FFFFLandroid/graphics/RectF;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, p1

    .line 20
    move v3, p2

    .line 21
    move-object v6, p3

    .line 22
    move v4, p4

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    move-object v7, v6

    .line 26
    const/high16 v6, 0x3f800000    # 1.0f

    .line 27
    .line 28
    move v5, v4

    .line 29
    move v4, v3

    .line 30
    move v3, v2

    .line 31
    move-object v2, v0

    .line 32
    invoke-virtual/range {v2 .. v7}, Lcom/mycompany/app/crop/Edge;->b(FFFFLandroid/graphics/RectF;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
