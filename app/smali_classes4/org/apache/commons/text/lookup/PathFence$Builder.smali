.class final Lorg/apache/commons/text/lookup/PathFence$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/lookup/PathFence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lorg/apache/commons/text/lookup/PathFence;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:[Ljava/nio/file/Path;


# instance fields
.field public c:[Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/nio/file/Path;

    .line 3
    .line 4
    sput-object v0, Lorg/apache/commons/text/lookup/PathFence$Builder;->f:[Ljava/nio/file/Path;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/text/lookup/PathFence;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/text/lookup/PathFence;-><init>(Lorg/apache/commons/text/lookup/PathFence$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
