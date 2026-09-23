.class Landroidx/room/util/TableInfo$ForeignKeyWithSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/util/TableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForeignKeyWithSequence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/room/util/TableInfo$ForeignKeyWithSequence;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:I

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->c:I

    .line 5
    .line 6
    iput p3, p0, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->f:I

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->g:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->h:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;

    .line 2
    .line 3
    iget v0, p0, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->c:I

    .line 4
    .line 5
    iget v1, p1, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->c:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->f:I

    .line 11
    .line 12
    iget p1, p1, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->f:I

    .line 13
    .line 14
    sub-int/2addr v0, p1

    .line 15
    :cond_0
    return v0
.end method
