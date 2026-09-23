.class public abstract Lj$/util/stream/c6;
.super Lj$/util/stream/j5;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/Comparator;

.field public c:Z


# direct methods
.method public constructor <init>(Lj$/util/stream/n5;Ljava/util/Comparator;)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lj$/util/stream/j5;-><init>(Lj$/util/stream/n5;)V

    .line 320
    iput-object p2, p0, Lj$/util/stream/c6;->b:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lj$/util/stream/c6;->c:Z

    const/4 v0, 0x0

    return v0
.end method
