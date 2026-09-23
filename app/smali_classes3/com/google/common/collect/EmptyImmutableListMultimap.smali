.class final Lcom/google/common/collect/EmptyImmutableListMultimap;
.super Lcom/google/common/collect/ImmutableListMultimap;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableListMultimap<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Lcom/google/common/collect/EmptyImmutableListMultimap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/EmptyImmutableListMultimap;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/collect/RegularImmutableMap;->k:Lcom/google/common/collect/ImmutableMap;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/common/collect/EmptyImmutableListMultimap;->k:Lcom/google/common/collect/EmptyImmutableListMultimap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final G()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->i:Lcom/google/common/collect/ImmutableMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->i:Lcom/google/common/collect/ImmutableMap;

    .line 2
    .line 3
    return-object v0
.end method
