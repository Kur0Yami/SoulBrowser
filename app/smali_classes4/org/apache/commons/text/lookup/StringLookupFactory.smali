.class public final Lorg/apache/commons/text/lookup/StringLookupFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/lookup/StringLookupFactory$Builder;,
        Lorg/apache/commons/text/lookup/StringLookupFactory$DefaultStringLookupsHolder;
    }
.end annotation


# static fields
.field public static final a:Lorg/apache/commons/text/lookup/FunctionStringLookup;

.field public static final b:Lorg/apache/commons/text/lookup/FunctionStringLookup;

.field public static final c:Lorg/apache/commons/text/lookup/FunctionStringLookup;

.field public static final d:Lorg/apache/commons/text/lookup/FunctionStringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/text/lookup/b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/commons/text/lookup/b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lorg/apache/commons/text/lookup/FunctionStringLookup;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lorg/apache/commons/text/lookup/FunctionStringLookup;-><init>(Ljava/util/function/Function;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lorg/apache/commons/text/lookup/StringLookupFactory;->a:Lorg/apache/commons/text/lookup/FunctionStringLookup;

    .line 13
    .line 14
    new-instance v0, Lorg/apache/commons/text/lookup/b;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-direct {v0, v1}, Lorg/apache/commons/text/lookup/b;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lorg/apache/commons/text/lookup/FunctionStringLookup;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lorg/apache/commons/text/lookup/FunctionStringLookup;-><init>(Ljava/util/function/Function;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lorg/apache/commons/text/lookup/StringLookupFactory;->b:Lorg/apache/commons/text/lookup/FunctionStringLookup;

    .line 26
    .line 27
    new-instance v0, Lorg/apache/commons/text/lookup/b;

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    invoke-direct {v0, v1}, Lorg/apache/commons/text/lookup/b;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lorg/apache/commons/text/lookup/FunctionStringLookup;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Lorg/apache/commons/text/lookup/FunctionStringLookup;-><init>(Ljava/util/function/Function;)V

    .line 36
    .line 37
    .line 38
    sput-object v1, Lorg/apache/commons/text/lookup/StringLookupFactory;->c:Lorg/apache/commons/text/lookup/FunctionStringLookup;

    .line 39
    .line 40
    new-instance v0, Lorg/apache/commons/text/lookup/b;

    .line 41
    .line 42
    const/4 v1, 0x6

    .line 43
    invoke-direct {v0, v1}, Lorg/apache/commons/text/lookup/b;-><init>(I)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Lorg/apache/commons/text/lookup/FunctionStringLookup;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Lorg/apache/commons/text/lookup/FunctionStringLookup;-><init>(Ljava/util/function/Function;)V

    .line 49
    .line 50
    .line 51
    sput-object v1, Lorg/apache/commons/text/lookup/StringLookupFactory;->d:Lorg/apache/commons/text/lookup/FunctionStringLookup;

    .line 52
    .line 53
    return-void
.end method
