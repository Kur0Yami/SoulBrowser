.class public Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->a:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->b:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(B)I
    .locals 3

    .line 1
    and-int/lit16 v0, p1, 0xff

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->a:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    .line 4
    .line 5
    iget-object v2, v1, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->a:Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 6
    .line 7
    iget-object v2, v2, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->a:[I

    .line 8
    .line 9
    shr-int/lit8 v0, v0, 0x3

    .line 10
    .line 11
    aget v0, v2, v0

    .line 12
    .line 13
    and-int/lit8 p1, p1, 0x7

    .line 14
    .line 15
    shl-int/lit8 p1, p1, 0x2

    .line 16
    .line 17
    shr-int p1, v0, p1

    .line 18
    .line 19
    and-int/lit8 p1, p1, 0xf

    .line 20
    .line 21
    iget v0, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->b:I

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v2, v1, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->d:[I

    .line 26
    .line 27
    aget v2, v2, p1

    .line 28
    .line 29
    iput v2, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->c:I

    .line 30
    .line 31
    :cond_0
    iget-object v2, v1, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->c:Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 32
    .line 33
    iget v1, v1, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->b:I

    .line 34
    .line 35
    mul-int/2addr v0, v1

    .line 36
    add-int/2addr v0, p1

    .line 37
    iget-object p1, v2, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->a:[I

    .line 38
    .line 39
    shr-int/lit8 v1, v0, 0x3

    .line 40
    .line 41
    aget p1, p1, v1

    .line 42
    .line 43
    and-int/lit8 v0, v0, 0x7

    .line 44
    .line 45
    shl-int/lit8 v0, v0, 0x2

    .line 46
    .line 47
    shr-int/2addr p1, v0

    .line 48
    and-int/lit8 p1, p1, 0xf

    .line 49
    .line 50
    iput p1, p0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->b:I

    .line 51
    .line 52
    return p1
.end method
