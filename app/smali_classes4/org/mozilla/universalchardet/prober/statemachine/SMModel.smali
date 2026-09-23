.class public abstract Lorg/mozilla/universalchardet/prober/statemachine/SMModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

.field public final b:I

.field public final c:Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

.field public final d:[I

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;ILorg/mozilla/universalchardet/prober/statemachine/PkgInt;[ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->a:Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 5
    .line 6
    iput p2, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->c:Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 9
    .line 10
    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, [I

    .line 15
    .line 16
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->d:[I

    .line 17
    .line 18
    iput-object p5, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->e:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method
