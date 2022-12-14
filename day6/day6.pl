#!/usr/bin/perl -w

use strict;
$\ = "\n";

my $input = <DATA>;
my @lengths = (4, 14);

for my $l (@lengths) {
    for (0..length($input)-$l) {
	if (unique(substr($input, $_, $l))){
	    print $_ + $l;
	    last;
	}
    }
}

sub unique{
    my %counts;
    $counts{$_}++ for split(//, shift);

    for (values %counts) {
	return 0 if $_ > 1;
    }
    return 1;
}

__DATA__
gzbzwzjwwrfftfrrbvvcbcvcffpssvhhzfzbfzzrbrtrcttnthnhsnhsnnclcpctpprwwgppppchhvvctvtsvswwcdcrrdzdhzdzvddvfvfjjlldvvfllfhlfhlhghnhghrgrsggvbbhdhffzggmttjqtjjgljjwtjwjggldlzzrfrpppjsjggqrrdbbgwgtwwwtqwtqqvccjnnhrhqqsnssjbssmjjbzjjqnqnlnjncjjzzqddfqqqnqvnqncqqmsshqqccssvpvllbbfvfmmmgzgdggtjgjtjbttngtnnhhfrfddmtmtftcftthvttwzwrzrbrgrbrqbqccmmtvtqvtqqzmzwmzzzsvzvhhhqlhqlqplpggvmvwmmshhnshsjszzljlnlrnllgddqllpmllsgswwqnqlnlqqlmqqvrqvrqrppvrrqwqhqllgjgcggsllqgllghlghhbvhhcvvbddvcvwwwzdzzfjjvcczbbwccjvccmvmfvfgfmfttwrttpmtmsszccjggcssmqsmsgszzfpphghvgvvcddtltwlwnnrbbfdbbtssrvvmwwjfflmlblwlrlmlwwhrhnhqnnvdvllzblzzndzdlzzhpprbrprnrzrjjlnlnrrjddgrrwrttcstsgshszzvgvfvpfpqfpfbpbfbwbmmzvvnnqvvqppzspzpzplldqlqsqlldmlmgmcmwmsmfsfzfdzzbpzzbbcwbbtppphlhshchjjszztctpprqppszzchcqczczddscsrstsntstjsjqjjfggvccgbggqhghrhppdldnlndnpddllgplgppnlpnnmwwglghhftfrtrqtqsszrssfjjzhzfhfssflfslsmmgrrcdrdnrdnnqznndrrbtrrmhrhbhsbsgsnslsqlqnncpccplpldpldppshsdssqdsqdsqdsdsdfsddchczhczcszcscffzhfzffpbbgttdhthnhnjnwnnwrrmwmlljzlzlzdzrrcvcbbsfstfsfnfqftqffgjfjzfjfsjswswccsvcvlccshhjpjcccnfnqqmsqmmrwmwjwswgsgjsjttmjmjttpqtqwttgmgfmmnbnrnpnwppgspggwnwqnqpqmmbmmnwnllbwwdqqzsqqtgttnrtrllcwcchpchcbhbpbnpbpsptpvtvzvrzzslljddjzjjmqmmdpmddcdzzrdrqddtctppwzzwrzrvzrvrzzjtztqqsmmcncllhmlmpmhgsrtrzjhjbtfvhmzpssfbjwcdshthnmmqmfhlhwcbbllwzbwfgfvzjcqblchzqqqgcgmpnbnnblhbcpgmvsbvtcmhsghldlhqlghgtpdvjflmjsmppdsvrjlwvhmwsmfvvdnzpmtfqjqpjdctnnrlfjfvdtmvdmhsczlfsqwfrqtlqwnzdzrcdzmhvrgwnjjtqjrqljhgcffglvhnsdssqdpfrfhtjwlqzvfjmpjnqhsjvndtstqjsqgcmgqdjvfqnlmtjlvcblndprmffrgqdnnncnlfflclgqbjbmsdqsjrmzpwtbqqqqsqmgthhjfqwzvcbqwlvdbffhcvncpldmchnptbnlbhmzrrjhzvzdrvtlhsnfnfdnvhlrlrmdcpnmvdwswctcqldszlvftqtwldrhmfjmfvcgjcdjsbjqjwdtslblwhqfvgrfcpnhszqqsfwbwcmvfvccvztdmcjqfjvdvmbdtcjvtwqpwsqjtdvpvvvsdrrvngmjztgjtnpdbmtlrbrjlwsdnthgzgpssgbzzrqvgblqhrtfbflnphvhpzmdfrwqvjjvcpsmdrqwdbzlpnqpmglgqzfhctrzdpzdthqgjtvpwcrlsmqnjwgzlnqbthvfswhjtrrsrswhbmnddgzmznvppbnmtjpzpdpmpzpmsgfstzldgmrtgplwwsbztphtcvdfgsqzqwrmlqpnhvpcqpfjpbrthrtwgqlfnrqcrpvhssjmhfgpnzzvlrlcbnpmddhtdvvfrrvprqrwbhfgvvltgrhrpwsdgvrlgthbztcgcfggtcfzqtlcdhpmcvpgcszslhpfrttnrdrqpqlgdfwtccmbhfrnlbhhmrtrjmzstbqhmtphzcpcllzsnghfvlwvzzvlqrjmfsvhrnjnvldgnbqvpjsmmphhrmhqrtcncmjwbdlqtrvmhgjrjsrddcpqnjhfmczfgwzspnrjfwvfdpdlcfpvctfrlspdwwlnpbvbglzsmgfsmrshsqgcvlfrvjssrglbwvvvgpvtqshbtqmzbnglflhhldtfzqssptrbnnzdqwqtstpftdqgmmhfjdlfwtmcmtmcgcvtfhzvsbllgbchvlhrgnvvbsnrwqrlvdqlcwwlgbjrvrzgcvljqzvdngtbhpnppjrzpmbwztzvnvrbfccfgvnqvrcmpdblngcvlwjwzpbbwmnslsdjmbrwbvnjsgcmsfvzvnwbzrrlzvgdnzcqqgggvmcwczjqnrddnzhlndgzjbvtbtjqdnlvlflqnfvjdmfstpdfqsgjdslgtpgdnvvpmfwvlqbmbgdrqjhdfhlmsdtfwpscsvdzmswszjfwqtsjqpfnjjlnsspvlgzwwtvwgdzfjjljfwbvfbvpglcqcdbdpshwcqzswbwhftbfqblzpqfmqpvzdjsrcqtvjntnhmlhmzllffcjsdnwpfzdglvlrhrljbrhjhgdnfcqcrccwrbbhrvqwrzlwjrrwzsfcwsvbqsjgtgpzqwlczljrtdhtzcgsfgqssdbjjmttdtzhrqtbqjtqfwmcpdftrfjmznpscsqmtfcdpcdjwcqjvmhngcqnmtmwfttcvpwgcnhhgnnbgjdvztzhczvqljjqwcmwcbvmqqjsfnmhtbtsvsnsfwfzgdvlctrgdvbjqpgfrrlsnppmvhfbbclprlvcssnvtsgftmlpqrpjzrrphrzltbtgfwjqqvbgqjdpdgqvzppfzcbhdbbjttcdzclsphtlzfvnfqgpmqvpzrqgpdnbmsrqgsnfdwpvndzmsllgmnrlhnnzldwshtrrsrsmdncwrcjnmcjlwbbfpzcwzvldtgvbcvhnbhgjgwjcvslrfcwbqlrqldvpcgnbwbzzncncftrgbrwchfrrtnpqsjbcpzvplnbqdgtvnnrcwwfvbdzdrsfspvtbhflhsbqmlsjvfmpvjbfvcrdmgrfqsmqgfrntfqnlqbvmsqtpncjrstspbqvfmddmhwsssdcddshmwdlscttmdzljtpwhzhzhwsdnmgjstfmlnqqvzzdqpqsjdsllswmqcjtnthwqnhbscrjdstljqgncjvjvlpfrtscrzrqghrdvdnbtnpshpldcchljzrzqjlwwscnphvrwlvzttcdjdrddgmvqpvdmttdqhwpfmslzvnrwlrrdttbhctgpgzjrmdwjbcmsprwggvmdmmltldgpbfnppnrpwcnpgtblccdvbsnfvgzmjppftvndmdslfshjvndfvvzjjlzhgfmhcggttrcrbrlwrqgjpchvhnjwqnbsnmftwszhzftglrfdvvnbcbzsslgmdchtrrrqqzhllrfhwfwbbdgfpdfwssmzcfcnzmrhfdddtdhfqmctsglqbwhwpnbdzbsfbbvvthrrgjvztjjwgjcgjntrddmmdldtmvjnwjbcqwfwvfhsrpchznhlqpcttqjffbrpbftftdjzlrqchmzrfgjrqlndfwfrghtsfsblcvtjmjrbfrwdgsgzmmjpdlbwzfscfsfcdqwdwnjwjbvvbptmfrqltmnlpbtrqspwdfmhnncqgtrtmbzhfmwrbcqhmmpmvprvwrjplspcmmspldmbgpbtmqjtrfcpfhcnpjbnlhjpzflstjqfqvzcnfgvrmtplndchffzrtfrqdpdnzrspddwmpzlfchrzzfcfvmbvfnlfwtfbvnffdqhljbvwwdtmszgrjtzwqdbgvvfphcnsdgvlmslqngfmsbrztrnpjprghmjffscbnfqwrvjjjtfzrmjtzbwdsmzgmbtjzvddhngmzvflwftblbzfd
