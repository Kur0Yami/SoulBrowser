.class public final synthetic Lkotlin/text/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic c:Lkotlin/text/Regex;

.field public final synthetic f:Ljava/lang/CharSequence;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/text/b;->c:Lkotlin/text/Regex;

    iput-object p2, p0, Lkotlin/text/b;->f:Ljava/lang/CharSequence;

    iput p3, p0, Lkotlin/text/b;->g:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/text/b;->f:Ljava/lang/CharSequence;

    iget v1, p0, Lkotlin/text/b;->g:I

    iget-object v2, p0, Lkotlin/text/b;->c:Lkotlin/text/Regex;

    invoke-static {v2, v0, v1}, Lkotlin/text/Regex;->a(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    move-result-object v0

    return-object v0
.end method
